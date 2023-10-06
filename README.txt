Download the official FTDI D2XX drivers for Windows 11 Arm from FTDI's site:

  https://ftdichip.com/drivers/d2xx-drivers/

Run the build script as shown:

  $ make.sh FTDI.zip

The build script expects a POSIX shell environment and `unzip` to be present.

After running, the patched driver will be available in `./build`. Manually
install the drivers through Device Manager.

You can also find pre-packaged drivers in "Releases" if you trust me.

Last tested with FTDI driver version 2.12.36.4A.
