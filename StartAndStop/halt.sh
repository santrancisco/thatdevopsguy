#!/bin/bash
set -e
echo "Shutdown admin vagrant box"
cd /Volumes/Devops/thatdevopsguy
vagrant halt
cd ~/
echo "Sleep for a bit so all VBox services gracefully shutdown"
#echo "Killing all remaining Chrome sessions"
#killall "Google Chrome"  || true 
selected=1
echo $selected
while [ $selected == "1" ]
do
  echo
  echo "The following processes are still using /Volumes/Devops:"
  lsof | grep "/Volumes/Devops" || true
  echo
  echo "Choose the following:"
  echo " 1 - Check running processes again(Vbox services might take time to shut down)"
  echo " 2 - Kill all these processes then Detach the volume"
  echo " Any other keys - Do nothing"
  echo
  read -n 1 -p "Select: " selected
 echo ">>>> $selected"
done

if [[ $selected == "2" ]]
then
  read -n 1 -p "Are you sure? Press enter to continue or Ctrl+C to cancel"
  echo "Killing remaining processes that use this drive"
  lsof | grep "/Volumes/Devops" | awk '{ print $2 }' | xargs -I {} kill -9 {}
  echo "Detaching /Volumes/Devops"
  hdiutil detach /Volumes/Devops
  echo "FINISHED! You can logoff and go home ;)"
  exit
fi
echo "Well... you might wanna clean those processes up before running this script again"
echo "If the list of process is empty, pick option 2 anyway to detach the volume."

