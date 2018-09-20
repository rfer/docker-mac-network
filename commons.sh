#!/bin/bash

function connectVPN() {
	osascript -e "tell application \"Tunnelblick\"" -e "connect \"docker-for-mac\"" -e "end tell" &> /dev/null
}

function disconnectVPN() {
 	osascript -e "tell application \"Tunnelblick\"" -e "disconnect \"docker-for-mac\"" -e "end tell" &> /dev/null
}

function startupContainers() {
	docker-compose up -d
}

function shutdownContainers() {
  docker-compose stop
	docker ps -f name="dockermacnetwork_proxy_1" -f name="dockermacnetwork_openvpn_1" -q | xargs docker rm -f &> /dev/null
}

function sleepFor() {
	spin &
	spin_pid=$!
	sleep $1
	echo ""
	kill $spin_pid
	wait $spin_pid 2>/dev/null
}

function spin() {
    local i sp n
    sp='/-\|'
    n=${#sp}
    printf ' '
    while sleep 0.1; do
        printf "%s\b" "${sp:i++%n:1}"
    done
}


