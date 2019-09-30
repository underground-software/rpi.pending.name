
#### 9/30

* We have [known](known_issues.html) for some time that one cannot `git clone` the linux kernel to the device, as attemps to do so have resulted in git failing due to lack of RAM
* I attempted to repartition my microSD card with a ~7.5GB partition of type `linux-swap` at the end and try again.
* The `git clone` appeared to be making more progress than it did during previous attempts, but near the end of the "resolving deltas" stage, the device crashed
* When I rebooted, systemd failed to mount the filesystems on the microSD card, which I believe was due to my forgetting to add an entry to `/etc/fstab` corresponding to new swap partiton.
* There may be more to the problem than the above, but I then realized that I was acutally running the RPi 3 Model B V1.2 instead of our standard development device, the RPi 3 Model B+
* I will try and redo my test on the latter device
* I also identified the existing default swap space as not being disk-backed, see `/dev/zram0` in [known issues](known_issues.html) for more information
