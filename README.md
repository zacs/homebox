# Home Server Setup [![Build Status](https://travis-ci.org/zacs/homebox.svg)](https://travis-ci.org/zacs/homebox)

This project automatically installs and configures the software needed to run a [very] lightweight home automation and media server.

Specifically, this will get you up and running on a $40 Banana Pi with:

- Plex Media Server
- Homebridge

While this will work just fine, note that a Banana Pi is probably not fit for transcoding with Plex, so don't expect much to work.

### Set up

Before running this install, there are two prereqs:

1. Have installed the Banana Pie Media Server [OS image](http://www.htpcguides.com/banana-pi-pro-home-media-server-installer-image/)
2. Set environment vars for sensitive info (don't want to put your Nest password on a public repo...):
    - `NEST_LOGIN`
    - `NEST_PASSWORD`

To install, all you need to do is run `bootstrap.sh` remotely. It will install some pre-requisites (gcc, git, and [Ansible](http://docs.ansible.com/)) and will then clone this repo locally (by default it clones into `~/.setup`) and run the playbook:

    $ curl -fsSL https://raw.githubusercontent.com/zacs/homebox/master/bootstrap.sh | sh

If you prefer not to run code remotely, you just need to clone the repo down wherever you would like, and run:

    $ ./bootstrap.sh

After installing the prerequisites this will run the `local` playbook
for the first time. If for some reason `bootstrap.sh` barfs, you can run the playbook manually via:

    $ ansible-playbook local.yml -i hosts --ask-sudo-pass --connection=local

If it's your first time, go brew some coffee or tea because this will
take some time building packages.

### Notes

If using Plex with an AppleTV [this link](https://forums.plex.tv/discussion/191474/formats-codecs-container) elaborates on which files/formats/containers can be served without transcoding:

>**Video Formats**
H.264 video up to 1080p, 60 frames per second, High or Main Profile level 4.2 or lower
H.264 Baseline Profile level 3.0 or lower with AAC-LC audio up to 160 Kbps per channel, 48kHz, stereo audio in .m4v, .mp4, and .mov file formats
MPEG-4 video up to 2.5 Mbps, 640 by 480 pixels, 30 frames per second, Simple Profile with AAC-LC audio up to 160 Kbps, 48kHz, stereo audio in .m4v, .mp4, and .mov file formats
**Audio Formats**
HE-AAC (V1), AAC (16 to 320 Kbps), protected AAC (from iTunes Store), MP3 (16 to 320 Kbps), MP3 VBR, Audible (formats 2, 3, and 4), Apple Lossless, AIFF, and WAV; Dolby Digital 5.1 and Dolby Digital Plus 7.1
**Photo Formats**
JPEG, GIF, TIFF

### Why?

I already have a dev machine setup like this, so `homebox` is just a pared-down fork. Since I'm new to home automation, my guess is I'll be flattening by Banana Pie a lot, and no one wants to spend hours `chmod`ing a bunch of crap, etc.

### License

MIT License
