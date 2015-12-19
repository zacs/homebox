# Home Server Setup [![Build Status](https://travis-ci.org/zacs/homebox.svg)](https://travis-ci.org/zacs/homebox)

This project automatically installs and configures the software needed to run a [very] lightweight home automation and media server.

Specifically, this will get you up and running on a $40 Banana Pi with:

- Plex Media Server
- Homebridge

While this will work just fine, note that a Banana Pi is probably not fit for transcoding with Plex, so don't expect much to work.

### Set up

To install, all you need to do is run `bootstrap.sh` remotely. It will install some pre-requisites (gcc, git, and [Ansible](http://docs.ansible.com/)) and will then clone this repo locally (by default it clones into `~/.setup`) and run the playbook:

    $ curl -fsSL https://raw.githubusercontent.com/zacs/homebox/master/bootstrap.sh | sh

If you prefer not to run code remotely, you just need to clone the repo down wherever you would like, and run:

    $ ./bootstrap.sh

After installing the prerequisites this will run the `local` playbook
for the first time. If for some reason `bootstrap.sh` barfs, you can run the playbook manually via:

    $ ansible-playbook local.yml -i hosts --ask-sudo-pass --connection=local

If it's your first time, go brew some coffee or tea because this will
take some time building packages.

### Why?

I already have a dev machine setup like this, so `homebox` is just a pared-down fork. Since I'm new to home automation, my guess is I'll be flattening by Banana Pie a lot, and no one wants to spend hours `chmod`ing a bunch of crap, etc.

### License

MIT License
