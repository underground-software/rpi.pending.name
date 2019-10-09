## GPIO setup

### To install the latest Fedora package of libgpiod and its python bindings:

`dnf install libgpiod python3-libgpiod`

https://llllllllll.github.io/c-extension-tutorial/member-vs-getset.html

### Our libgpiod fork:

[Source code is on Github](https://github.com/underground-software/libgpiod.git)

### How to build libgpiod from source:

1. Install dependencies:

	`dnf install make gcc autoconf autoconf-archive automake m4 libtool`

2. Clone the repository (linked above)

3. Generate Makefiles for building libgpiod, the python bindings, and some tools:

	`cd libgpiod`

	`./autogen.sh --enable-bindings-python --enable-tools`

	`make && make install`

4. To view documentation for libgpiod, run the following in a python interpreter:

	`import gpiod`

	`help(gpiod)`

5. For more information, view the README in the root of the repository
