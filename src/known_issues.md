### Known issues
##### *an incomplete list*

* An installation of the upstream image does not have any swap space
    * moderate system load causes programs to die from lack of memory
    * `swapon` reveals a swap device `/dev/zram0`, but [this](https://www.kernel.org/doc/Documentation/blockdev/zram.txt) is actually just compressed RAM and not actually disk-backed swap

