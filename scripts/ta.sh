#!/bin/sh

# Attaches to default tmux session if existing, otherwise creates new default session based on host


# Make sure we are not already in a tmux session
# -n checks if string is not zero
if [ -n "$TMUX" ]; then
  echo "Already in a tmux session"
  exit 1
fi

tmux has-session -t default 2>/dev/null
if [ $? -eq 0 ]; then
  echo "Reattaching to default session"
else
  echo "Creating new default session"
  tmux new-session -d -s default

  case $SHORTHOST in
   $HOSTNAMEHOMESERVER) 
     tmux new-window -t default:1 -n 'Xmpp' 'mcabber'
     tmux new-window -t default:2 -n 'Temps' 'temps'
     ;;
   *)
     ;;
  esac
fi 

tmux attach-session -t default 
