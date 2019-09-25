##Installing i3wm##

Run the following commands once logged in:

`dnf install xorg-x11*`
`dnf install i3 i3status dmenu i3lock`
`dnf install firefox`
Create a `.xinitrc` file for your user if it doesn't already exist.
The only line that needs to be in the file is: `exec i3`
