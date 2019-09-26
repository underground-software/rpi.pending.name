potential useful driver:
https://github.com/ssvb/xf86-video-fbturbo/wiki/Installation

installed:  (^ = possibly not required)
	`automake`
	`xorg-x11-util-macros`
	`^libXrandr-devel`
	`yum group install "X Software Development"`


syntax error:

unexpected token near: RANDR,
configure: line 15399: XORG_DRIVER_CHECK_EXT(RANDR, randrproto)

grep -r "RANDR":

autom4te.cache/output.0:XORG_DRIVER_CHECK_EXT(RANDR, randrproto)
autom4te.cache/output.1:XORG_DRIVER_CHECK_EXT(RANDR, randrproto)
configure.ac:XORG_DRIVER_CHECK_EXT(RANDR, randrproto)
configure:XORG_DRIVER_CHECK_EXT(RANDR, randrproto)

