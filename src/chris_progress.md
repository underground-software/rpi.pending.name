
#### 10/9

* Audio works by installing `alsa-plugins-pulseaudio`
* I was unable to recreate any clipboard issues on enlightenment,
however Xterm doesn't have built in CLIPBOARD support and only
uses the PRIMARY buffer. This *could* be hacked in with an
`~/.Xresources` hack but we could also just use URXVT, terminator,
or any other terminal emulator that has native clipboard support since
it's \$CURRENT_YEAR.
