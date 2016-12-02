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

	# Add 32 bits Live CD files
	$ sudo mkdir -p /mnt/mate-ubuntu32 
	$ sudo mount -o loop ~/ubuntu-mate-16.04.1-desktop-i386.iso /mnt/mate-ubuntu32  
	$ sudo cp -R /mnt/mate-ubuntu32/* /srv/rpiboot/mate-ubuntu/16.04/i386
	$ sudo cp -R /mnt/mate-ubuntu32/.* /srv/rpiboot/mate-ubuntu/16.04/i386

	# Add 64 bits Live CD files
	$ sudo mkdir -p /mnt/mate-ubuntu64
	$ sudo mount -o loop ~/ubuntu-mate-16.04.1-desktop-amd64.iso /mnt/mate-ubuntu64
	$ sudo cp -R /mnt/mate-ubuntu64/* /srv/rpiboot/mate-ubuntu/16.04/amd64
	$ sudo cp -R /mnt/mate-ubuntu64/.* /srv/rpiboot/mate-ubuntu/16.04/amd64

	# Update kernel files
	$ sudo /opt/pxe-scripts/update-kernel-files.sh

On client:

	Access BIOS menu by using F12, F2, ...
	Find "Boot override" menu or "Boot order"
	Select "LAN", "NET, or similar


