# Mate Ubuntu PXE

Simple PXE configuration to boot a Live CD over network.

## Usage

From a Raspbian installation:

	# Clone repo and install dependencies
	$ git clone https://github.com/remipassmoilesel/mate-ubuntu-pxe
	$ sudo mate-ubuntu-pxe/opt/install-dependencies.sh

	# Install PXE bootloader and scripts
	$ sudo cp -R mate-ubuntu-pxe/* /

	# Add Ubuntu Mate live CDs
	$ cd /opt/pxe-iso/
	$ wget https://.../ubuntu-mate-16.04.1-desktop-i386.iso
	$ wget https://.../ubuntu-mate-16.04.1-desktop-amd64.iso

	$ sudo /opt/pxe-scripts/mount-iso-images.sh
	
	# Update kernel files
	$ sudo /opt/pxe-scripts/update-kernel-files.sh

	# Mount all and launch
	$ sudo /opt/pxe-scripts/launch-pxe.sh

On client:

	Access BIOS menu by using F12, F2, ...
	Find "Boot override" menu or "Boot order"
	Select "LAN", "NET, or similar


