#!/bin/bash

echo "=== Shinra Mission Selector ==="
echo "Current mission points to:"
readlink mission-latest.txt
echo ""
echo "Available Missions:"
ls mission_v*.txt
echo ""
read -p "Enter the mission version you want to activate (e.g., v1 or v2): " version

new_mission="mission_${version}.txt"

if [ -f "$new_mission" ]; then
    rm -f  mission-latest.txt
    ln -s "$new_mission" mission-latest.txt
    echo "Mission updated! mission-latest.txt now points to $new_mission"
else
    echo " !!! That mission file doesn't exist!"
fi
