#!/bin/bash

source commons.sh

echo "Starting VPN and Proxy containers..."
startupContainer

echo "Waiting 5 secods for containers to be fully functional..."
sleepFor 5

echo "Exposing port 2375 for Docker remote API access using socat..."
startTPCListenHack

echo "Connecting to the VPN from Tunnelblick..."
connectVPN

echo "Done. Just make sure Tunnelblick has successfully connected to the VPN and you're good to go!"

