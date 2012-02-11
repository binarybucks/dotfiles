#! /bin/bash
# Sets system proxy to ssh tunnel with dynamic port forwarding listening on localhost port 2080

TUNELTARGET=newmind
enable_proxy_tunnel () {
    echo "Enabling proxy"
    if [ $sshState != "enabled" ]; then
        ssh -D 2080 $TUNNELTARGET -f -N > /dev/null 2>&1
    fi
    if [ $proxyState != "enabled" ]; then
        networksetup -setsocksfirewallproxy $device "localhost" "2080"
        networksetup -setsocksfirewallproxystate $device on   
    fi

}

disable_proxy_tunnel () {
    echo "Disabling proxy"
    if [ $proxyState != "disabled" ]; then
        networksetup -setsocksfirewallproxystate $device off   
    fi
    if [ $sshState != "disabled" ]; then
        kill -9 `ps -ef | grep "ssh -D 2080" | grep -v grep | awk '{print $2}'`
    fi
}

proxy_status () {
    # DEVICE
    if [[ `networksetup -getairportpower en1 | awk '{ print $4 }'` == "On" ]]; then
        device="Airport"
    else
        device="Ethernet"
    fi
    echo "-- System network device: $device"
    
    # SYSTEM SOCKS SETTINGS
    if [[ `networksetup -getsocksfirewallproxy "$device" | grep Enabled | head -1 | awk '{ print $2}'` == "Yes" ]]; then
        proxyState="enabled"
    else
        proxyState="disabled"
    fi
    echo "-- System socks proxy: $proxyState"
    
    # VPN TUNNEL
    
    # SSH TUNNEL
    if [[ `ps -ef | grep "ssh -D 2080" | grep -v grep` != "" ]]; then
        sshState="enabled"
    else
        sshState="disabled"
    fi
    echo "-- SSH tunnel: $sshState"
}

case "$1" in 
    start)
        proxy_status
        enable_proxy_tunnel
        exit 0
    ;;
    stop)
        proxy_status
        disable_proxy_tunnel
        exit 0
        proxy_status
    ;;
    status)
        proxy_status
        exit 0
    ;;
    *)
    echo "Usage $0 {start|stop|status}" >&2
    exit 1
    ;;
esac
