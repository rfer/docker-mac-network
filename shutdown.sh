#!/bin/bash

source commons.sh

echo "Disconnecting Tunnelblick from the VPN..."
disconnectVPN
echo "Stopping VPN and Proxy containers..."
shutdownContainer
echo "Killing socat"
stopTPCListenHack
echo "Done! You're free!"
