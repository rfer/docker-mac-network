#!/bin/bash

source commons.sh

echo "1 - Starting VPN and Proxy containers..."
startupContainers

echo ""
echo "2 - Waiting 5 secs for the containers to be fully functional..."
sleepFor 5

echo ""
echo "3 - Connecting to the VPN from Tunnelblick..."
connectVPN

echo ""
echo "4 - Done! Just make sure Tunnelblick has successfully connected to the VPN and you're good to go!"

