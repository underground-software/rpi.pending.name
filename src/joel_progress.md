#### 11/13

* Fabrizio and I have (pre-)released the first version of our RPI.GPIO -> libgpiod compatibility layer.
* Download the RPM [here](https://github.com/underground-software/python3-libgpiod-rpi/releases/tag/v0.1).
* Go [here](python3-libgpiod-rpi.html) for more information.

#### 10/20

* Continued to work with Fabrizio on compatibility layer, just need to do event handling now
* Discovered a warning thrown by the kernel when attempting to create an invalid proc dir via default behavior of `libgpiod/bindings/python/examples/gpiomon.py`
* The program passes `sys.argv[0]` to [`ioctl(2)`](http://man7.org/linux/man-pages/man2/ioctl.2.html), which causes the kernel to throw a warning and the `/proc/irq/<n>/<dirname>/` directory not to be created
* Event detection still works, but this is mildly not sane behavior. We will tweak the call to fix the issue on the libgpiod side
* In addition, the warning was mildly cryptic, so we posted a patch to the [linux kernel mailing list](https://lkml.org/lkml/2019/10/20/169)

#### 10/13

* Working on RPi.GPIO -> libgpiod compatibility layer [source](https://github.com/underground-software/libgpiod/tree/example_wrap)
* Patched upstream libgpiod config [commit](https://git.kernel.org/pub/scm/libs/libgpiod/libgpiod.git/commit/?id=9ed02fc793b332773658f3ba09f45a058e75b0a8)

#### 9/30

* We have [known](known_issues.html) for some time that one cannot `git clone` the linux kernel to the device, as attemps to do so have resulted in git failing due to lack of RAM
* I attempted to repartition my microSD card with a ~7.5GB partition of type `linux-swap` at the end and try again.
* The `git clone` appeared to be making more progress than it did during previous attempts, but near the end of the "resolving deltas" stage, the device crashed
* When I rebooted, systemd failed to mount the filesystems on the microSD card, which I believe was due to my forgetting to add an entry to `/etc/fstab` corresponding to new swap partiton.
* There may be more to the problem than the above, but I then realized that I was acutally running the RPi 3 Model B V1.2 instead of our standard development device, the RPi 3 Model B+
* I will try and redo my test on the latter device
* I also identified the existing default swap space as not being disk-backed, see `/dev/zram0` in [known issues](known_issues.html) for more information
