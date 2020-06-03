sudo dtc -q -I dts -O dtb dt-blob.dts -o dt-blob.bin
sudo cp dt-blob.bin /boot/
sudo mkdir /mnt/recovery
sudo mount /dev/mmcblk0p1 /mnt/recovery
sudo cp dt-blob.bin /mnt/recovery
sudo umount /mnt/recovery
sudo rmdir /mnt/recovery