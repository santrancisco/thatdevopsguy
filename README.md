# thatdevopsguy
A vagrant box with ansible provision for managing CloudFoundry environment

To test it:

In your host, run pcfdev:

```
cf dev start
```

Create a ansible-vault .setting.yml file to protect it with password incase you accidently commit it to github or having password file laying around in your system
Copy the content of setting.yml.sample to your ansible vault file and fire up the vagrant box.

```
ansible-vault create .setting.yml
## Choose a good password ;)
## Copy content of setting.yml.sample to this new ansible vault
## Then fire it up
vagrant up
```

Now, you should be able to `vagrant ssh` and switch to pcfdev user, check if cf & uaac commands are working :)

