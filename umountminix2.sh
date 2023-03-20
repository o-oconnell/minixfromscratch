mountpoint=minix2bookmnt

for i in root usr
do
    sudo umount -t minix $mountpoint/$i
done