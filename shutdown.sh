#!/bin/bash

source commons.sh

echo "1 - Disconnecting Tunnelblick from the VPN..."
disconnectVPN

echo ""
echo "2 - Stopping VPN and Proxy containers..."
shutdownContainer

echo ""
echo "3 - Killing socat..."
stopTPCListenHack

echo ""
echo "4 - Done! You're free, go out and see the world, child."
