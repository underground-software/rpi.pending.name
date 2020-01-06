#! /bin/sh
#
# setup-script.sh
# Copyright (C) 2019 Chris Odom, Jeff Brown, Daniel Pivanka
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


# updated the fedora packages
sudo dnf update -y

# set the GPU memory to 80 (default 32) to support camera

sudo sed -i s/gpu_mem=32/gpu_mem=80/g /boot/efi/config.txt

# change the value for GPU memory from 32 to 80

# Install enlightenment Desktop package and chromium browser

sudo dnf install -y xorg-x11-server-Xorg xorg-x11-xinit xorg-x11-xauth dbus-x11 terminator enlightenment chromium alsa-plugins-pulseaudio

# start the desktop

startx

# run through desktop initialization menu.
# everything is up and running


# Need to add the new GPIO binding packages
#Joel and Fabrizio?

# imotion setup.  
# Jeff to add this.  Its quite a process.  I need to recreate and will add soon.
