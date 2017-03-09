### Intro

These scripts I use in my MacbookPro to start and stop the environment at work and can be useful.

### Details

 - start.sh: 
   - Mounts /ops/Devops encrypted drive and prompt me for password
   - vagrant up & vagrant ssh to the box

 - halt.sh:
   - vagrant halt the box
   - Make sure no process is using the Disk using lsof
   - User can wait until VBox shutdown properly and allow the script to kill all other processes
   - Umount the encrypted drive.
 
 - go.sh:
   - Let me quickly vagrant ssh to the box ... save 1 command =)))

__NOTE: __

 - To make it easier, i run this box in a seperate account for just this box on my machine. This way, VBox will quit properly and I can unmount the disk and not have to shutdown all other vagrant box before I can unmount the disk.
 - I also soft-link ~/VirtualBox VMs folder to /Volume/Devops (which is where the encrypted drive is mounted to). This way even the VM state is also encrypted.



