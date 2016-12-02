# Mate Ubuntu PXE

Simple PXE configuration to boot a Live CD over network.

## Usage

From a Ubuntu 16.04 server installation:

	# Clone repo and install dependencies
	$ git clone https://github.com/remipassmoilesel/mate-ubuntu-pxe
	$ sudo mate-ubuntu-pxe/opt/install-dependencies.sh

	# Install PXE bootloader
	$ sudo cp -R mate-ubuntu-pxe/* /
	$ sudo /opt/pxe-scripts/install-dependencies.sh 
	$ sudo /opt/pxe-scripts/launch-pxe.sh

On client:

	Access BIOS menu by using F12, F2, ...
	Find "Boot override" menu or "Boot order"
	Select "LAN", "NET, or similar


