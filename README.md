# Home Server Setup [![Build Status](https://travis-ci.org/zacs/homebox.svg)](https://travis-ci.org/zacs/homebox)

This project automatically installs and configures the software needed to run a home automation and media server. Useful if you have an old Mac lying around.

Specifically, this will get you up and running with:

- Home Assistant
- Plex Media Server

While this will work just fine, note that a Banana Pi is probably not fit for transcoding with Plex, so don't expect much to work.

### Set up

1. Clone this repo or [download](https://github.com/zacs/homebox/archive/master.zip) and unzip it.
2. Open Terminal and run the install script: `./bootstrap.sh`

After installing the prerequisites this will run the `local` playbook for the first time. If for some reason `bootstrap.sh` barfs, you can run the playbook manually via: `ansible-playbook local.yml -i hosts --ask-sudo-pass --connection=local`

If it's your first time, go brew some coffee or tea because this will take some time building packages.

### Notes

If using Plex with an AppleTV [this link](https://forums.plex.tv/discussion/191474/formats-codecs-container) elaborates on which files/formats/containers can be served without transcoding:

>**Video Formats**
>H.264 video up to 1080p, 60 frames per second, High or Main Profile level 4.2 or lower
>
>H.264 Baseline Profile level 3.0 or lower with AAC-LC audio up to 160 Kbps per channel, 48kHz, stereo audio in .m4v, .mp4, and .mov file formats
>
>MPEG-4 video up to 2.5 Mbps, 640 by 480 pixels, 30 frames per second, Simple Profile with AAC-LC audio up to 160 Kbps, 48kHz, stereo audio in .m4v, .mp4, and .mov file formats
>
>**Audio Formats**
>HE-AAC (V1), AAC (16 to 320 Kbps), protected AAC (from iTunes Store), MP3 (16 to 320 Kbps), MP3 VBR, Audible (formats 2, 3, and 4), Apple Lossless, AIFF, and WAV; Dolby Digital 5.1 and Dolby Digital Plus 7.1
>
>**Photo Formats**
>JPEG, GIF, TIFF

### Why?

I already have a dev machine setup like this, so `homebox` is just a pared-down fork. No one wants to spend hours `chmod`ing a bunch of crap, etc.

### License

MIT License
