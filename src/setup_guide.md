# Setup

Type `text like this` at the command prompt once logged in:

## Image and Flashing

Grab an image from [here](https://fedoraproject.org/wiki/Architectures/ARM/Raspberry_Pi?rd=Raspberry_Pi#ARMv7_supported_images)

### From Fedora
The recommended way to install it is to use fedora-arm-image-installer:

`sudo fedora-arm-image-installer --image=Fedora-Minimal-30-1.2.aarch64.raw.xz --target=rpi3 --media=/dev/mmcblk0 --resizefs`

### Not from Fedora
If you aren't on a fedora machine, you can run:

`xzcat Fedora-IMAGE-NAME.raw.xz | sudo dd status=progress bs=4M of=/dev/XXX # Location of your media (will be sdX or mmcblkX depending on hardware)`

and resize the / partition by using:

`sudo gparted /dev/xxx` where XXX is sdX or mmcblkX (use lsblk to find out)

## Post Installation

- updated the fedora packages

	`sudo dnf update`

- set the GPU memory to 80 (default 32) to support camera

	`vi /boot/efi/config.txt `

- change the value for GPU memory from 32 to 80

- Install enlightenment Desktop package and chromium browser

	`sudo dnf install xorg-x11-server-Xorg xorg-x11-xinit xorg-x11-xauth dbus-x11 xterm`

	`sudo dnf install enlightenment`

	`sudo dnf install chromium`

- Install audio drivers

	`sudo dnf install alsa-plugins-pulseaudio`

- start the desktop

	`startx`

- run through desktop initialization menu.

- Need to add the new GPIO binding packages
(TODO) Joel and Fabrizio?

- imotion setup.  
- Jeff to add this.  Its quite a process.  I need to recreate and will add soon.

