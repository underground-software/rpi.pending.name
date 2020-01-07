#! /bin/sh
#
# setup-script.sh
# Copyright (C) 2019 Chris Odom, Jeff Brown, Daniel Pivanka, Joel Savitz
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program. If not, see <https://www.gnu.org/licenses/>.
#

# TODO:
# - imotion setup

EXIT_SUCCESS=0
EXIT_FAILURE=1

usage() {
	echo <<EOF
=== fedora-rpi setup script ===
usage: setup-script.sh [FLAGS]"

valid flags:
	-n: do not create default rpi/rpi user
EOF
}

die_at() {
	echo <<EOF
>Fatal error occured at: $1
>You should fix any errors described above and re-run this script
>Exiting with failure...
EOF
	exit $EXIT_FAILURE
}

# X and window manager related packages
PKGS_X="xorg-x11-server-Xorg xorg-x11-xinit xorg-x11-xauth dbus-x11 enlightenment"

# desktop applications
PKGS_APPS="terminator chromium"

# latest RPi.GPIO compatibility layer
# TODO:
# 	- new version with bug fixes
#	- submit to fedora repositories
PKGS_GPIO="https://github.com/underground-software/python3-libgpiod-rpi/releases/download/v0.1/python3-libgpiod-rpi-0.1-1.aarch64.rpm"

# useful libraries: right now this just enables audio
PKGS_LIBS="alsa-plugins-pulseaudio"

NO_USER=""
while getopts "n" OPTION; do
	case ${OPTION} in
		n)
			NO_USER=y
			;;
		*)
			echo "Unknown option $OPTION, ignoring"
			;;
	esac
done
shift $((OPTIND -1))

# validate that the user is root
if [ ! $UID -eq 0 ]
then
	echo "This script must be run as root"
	die_at "root user validation"
fi

# update the fedora packages
sudo dnf update || die_at "initial dnf update"

# set the GPU memory to 80 (default 32) to support camera
sudo sed -i s/gpu_mem=32/gpu_mem=80/g /boot/efi/config.txt || die_at "gpu_mem config tweak"


# install window manager and prereqisites
dnf install -y $PKGS_X || die_at "X and window manager installation"
dnf install -y $PKGS_APPS || die_at "Apps installation"
dnf install -y $PKGS_GPIO || die_at "GPIO installation"

# unless user sepcifies not to, add rpi/rpi user with sudo privileges
if [ -z "$NO_USER" ]
then
	useradd rpi || die_at "create user rpi"
	echo "rpi" | passwd --stdin || die_at "set user rpi password"
	echo 'rpi ALL=(ALL:ALL) ALL' >> /etc/sudoers || die_at "add rpi user to sudoers"
	su rpi || die_at "switching to rpi user"
fi


# configure the window manager
echo ". /etc/X11/xinit/xinitrc-common" > ~/.xinitrc || die_at "add common xinitrc code to local file"
echo "exec enlightement_start" >> ~/.xinitrc || die_at "add enlighement_start to xinitrc"


echo << EOF
=== script has successfully finished ===
To start the window manager, run: startx
EOF

exit $SUCCESS
