#!/bin/bash
set -e
echo "Note: Run 'securechrome' for secure chrome with profile stored in encrypted drive"
echo "Mounting Devops image"
hdiutil attach /opt/Devops.dmg
sleep 2
cd /Volumes/Devops/thatdevopsguy
vagrant up
vagrant ssh
