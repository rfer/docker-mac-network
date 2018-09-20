#!/bin/bash

source commons.sh

echo "1 - Disconnecting Tunnelblick from the VPN..."
disconnectVPN

echo ""
echo "2 - Stopping VPN and Proxy containers..."
shutdownContainers

echo ""
echo "3 - Done! You're free, go out and see the world, child."
