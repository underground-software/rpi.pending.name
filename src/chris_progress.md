
#### 10/10

* Worked on creating a live-cd (Following the guide
[here](https://fedoraproject.org/wiki/Livemedia-creator-_How_to_create_and_use_a_Live_CD))
	- Installed mock, kickstart, and lmc
	- Cloned fedora kickstarts
	- Ran a mock chroot into base fedora-30-aarch64
	- copied kickstart files into chroot
	- Begain livemedia creation process, immediately ran into errors :^(

#### 10/9

* Audio works by installing `alsa-plugins-pulseaudio`
* I was unable to recreate any clipboard issues on enlightenment,
however Xterm doesn't have built in CLIPBOARD support and only
uses the PRIMARY buffer. This *could* be hacked in with an
`~/.Xresources` hack but we could also just use URXVT, terminator,
or any other terminal emulator that has native clipboard support since
it's \$CURRENT_YEAR.

