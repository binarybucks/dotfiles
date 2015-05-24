#! /bin/bash
# On OSX copy plist to ~/Library/LaunchAgents for periodic backups


START=0
END=0
# sudo gem install terminal-notifier
NOTIFY="/usr/bin/terminal-notifier"
PING="/sbin/ping"
RSYNC="/usr/bin/rsync"

# Source ~/zsh/local to get access to environment variables in non-login shells (e.g launchd)
. /Users/alexander/.zsh/local

# Replace the following values here or export as environment variables in ~/.zsh/local
SOURCE=$TMSOURCE
DEST=$TMDEST
DEST_HOST=$TMDESTHOST
EXCLUDE=$TMEXCLUDEFILE

start_notify () {
	START=$(date +%s)
	if [[ -e $NOTIFY ]]; then
		$NOTIFY -title "TimeMachine" -message "Destination reachable. Starting backup"
	fi
}

end_success_notify () {
	END=$(date +%s)
	DIFF=$((( $END - $START )/60))
	if [[ -e $NOTIFY ]]; then
		$NOTIFY -title "TimeMachine" -message "Backup finished in $DIFF minutes"
	fi
}

check_dest() {
	  count=$($PING -c 3 -o $DEST_HOST | grep "received" | awk -F',' '{ print $2 }' | awk '{ print $1 }')

	  if [ "$count" != 1  ]; then
	    # 100% failed - try one more time after sleeping for 30 secs
		if [[ -e $NOTIFY ]]; then
	        	$NOTIFY -title "TimeMachine" -message "Destination not reachable. Retrying"
		fi
	    sleep 30
	    count=$($PING -c 3 -o $filer | grep "received" | awk -F',' '{ print $2 }' | awk '{ print $1 }')
	  	if [ "$count" != 1  ]; then
	                            if [[ -e $NOTIFY ]]; then
                        $NOTIFY -title "TimeMachine" -message "Destination not reachable. Exiting"
                fi
			    exit;
	        else 
		        start_notify
	        fi
	   else 
		start_notify
	   fi	
}

sync () {
	$RSYNC --archive --delete --progress --delete-excluded -v --inplace --partial --executability --exclude-from=$EXCLUDE $SOURCE $DEST 
}

check_dest
sync
end_success_notify
