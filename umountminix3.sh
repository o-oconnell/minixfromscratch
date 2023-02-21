mountpoint=minix3bookmnt

for i in root usr home
do
    sudo umount -t minix $mountpoint/$i
done
