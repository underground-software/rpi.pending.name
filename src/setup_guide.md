# GUI basics

Type `text like this` at the command prompt once logged in:

### 1. Install the GUI backend

`dnf install xorg-x11-server-Xorg xorg-x11-xinit xorg-x11-xauth dbus-x11 xterm`

Continue to 2b for a windows/mac like desktop, or continue with 2a if you would like a challenge.

### 2a. Install i3wm

`dnf install i3 i3status dmenu i3lock` 

Create an `.xinitrc` file for your user if it doesn't already exist.
The only line that needs to be in the file is: `exec i3`

`startx` can be used to initialize i3 now.

Once i3 succesfully initializes for the first time, you will be given the option of uses the default configuration or choosing between the windows button or `alt` as your modifier (Mod) key.
The default behavior is the windows key.

#### Basic i3 keybindings:
* `Mod + D`: A dmenu bar will pop up on the top of the screen. Start typing the name of the file you'd like to execute and it will show up in the search bar. For example, typing in `firefox` will start the Firefox browser if it's installed.
* `Mod + <numkey>`: Will switch to workspace \# <numkey>
* `Mod + Shift + <numkey>`: Will switch window to workspace \# <numkey>
* `Mod + Enter`: Opens a new terminal window

### 2b. Install enlightenment

`dnf install enlightenment`

Create an `.xinitrc` file for your user if it doesn't already exist.
The only line that needs to be in the file is: `exec enlightenment_start`

There are more dependencies for enlightenment than i3. We're not sure of the mininal requirement.

For now, just run `dnf install xorg-x11-*` to install the dependencies and much, more more.

`startx` can be used to initialize Enlightenment now.

### 3. Install basic desktop utilities

For a web browser, `dnf install` one or more of the following packages:

* `firefox`
* `chromium`
* `midori`

Not all pages are working correctly on midori because of qt bug.

Might help:
`glx-utils`

