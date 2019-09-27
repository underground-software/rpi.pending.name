## GUI basics


# Installing i3wm
Run the following commands once logged in:

`dnf install xorg-x11-server-Xorg xorg-x11-xinit xorg-x11-xauth x11-dbus xterm`

`dnf install i3 i3status dmenu i3lock`

`dnf install firefox` and/or `dnf install chromium`

Create a `.xinitrc` file for your user if it doesn't already exist.
The only line that needs to be in the file is: `exec i3`

`startx` can be used to initialize i3 now.

Once i3 succesfully initializes for the first time, you will be given the option of uses the default configuration or choosing between the windows button or `alt` as your modifier (Mod) key.
The default behavior is the windows key.

### Basic keybindings :
* `Mod + D`: A dmenu bar will pop up on the top of the screen. Start typing the name of the file you'd like to execute and it will show up in the search bar. For example, typing in `firefox` will start the Firefox browser if it's installed.
* `Mod + <numkey>`: Will switch to workspace \# <numkey>
* `Mod + Shift + <numkey>`: Will switch window to workspace \# <numkey>
* `Mod + Enter`: Opens a new terminal window

