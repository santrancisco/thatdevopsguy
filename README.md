# thatdevopsguy
A vagrant box with ansible provision for managing CloudFoundry environment

To test it:

In your host, run pcfdev:

```
cf dev start
```

Review then copy sample setting and vagrant up after pcfdev is up and running.

```
cp settings.yml.sample .settings.yml
vagrant up
```

Now, you should be able to `vagrant ssh` and switch to pcfdev user, check if cf & uaac commands are working :)


