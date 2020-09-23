#!/system/bin/sh

function mount_ntfs_drives(){
	FILENAME="/system/etc/drives"
	N=1

	blkid | grep ntfs | cut -d : -f 1 > $FILENAME

	while read BLOCK; do
		echo "BLISS_NTFS: Mounting blocks: $BLOCK"
		LABEL="$( blkid -s LABEL $BLOCK | cut -d : -f 2 | cut -d '"' -f 2 )"

		if [ -z $LABEL ]; then
			LABEL="Windows"
		fi

		mkdir /mnt/"$LABEL"
		mount.ntfs -o rw,umask=000 $BLOCK /mnt/"$LABEL"

		((N++))
	done < $FILENAME

	rm $FILENAME
}

function mount_vfat_sdcard(){
	FILENAME="/system/etc/drives1"
	N=1

	blkid | grep vfat | grep mmcblk1p | cut -d : -f 1 > $FILENAME
	while read BLOCK; do
		echo "BLISS_VFATSD: Mounting blocks: $BLOCK"

		LABEL="sdcard_ext"

		mkdir /mnt/"$LABEL"
		chmod 777 /mnt/"$LABEL"
		mount -o iocharset=utf8 -o rw,umask=000 $BLOCK /mnt/"$LABEL"
		
		((N++))
	done < $FILENAME

	rm $FILENAME
}

function mount_ntfs_sdcard(){
	FILENAME="/system/etc/drives2"
	N=1

	blkid | egrep "ntfs|exfat" | grep mmcblk1p | cut -d : -f 1 > $FILENAME
	while read BLOCK; do
		echo "BLISS_NTFS_SD: Mounting blocks: $BLOCK"

		LABEL="sdcard_ext"

		mkdir /mnt/"$LABEL"
		chmod 777 /mnt/"$LABEL"
		mount.ntfs -o iocharset=utf8 -o rw,umask=000 $BLOCK /mnt/"$LABEL"
		
		((N++))
	done < $FILENAME

	rm $FILENAME
}

function touch_goodix_enable(){
	modprobe goodix
	modprobe -r i2c_hid
	modprobe i2c_hid
}

function do_post_boot() {
	# Mount  the vfat sdcard
	mount_vfat_sdcard
  # Mount  the ntfs sdcard
	mount_ntfs_sdcard
	# Mount all the ntfs drives
	mount_ntfs_drives
	# Touch Goodix Enable
	touch_goodix_enable
}

do_post_boot

return 0
