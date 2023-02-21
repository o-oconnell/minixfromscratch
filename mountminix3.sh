mountpoint=minix3bookmnt
image=minix3.1.0-book-version-harddisk.img
secsz=512
rootoff=`expr 64 '*' $secsz`
homeoff=`expr 32832 '*' $secsz`
usroff=`expr 315456 '*' $secsz`
rootsz=`expr 32768 '*' $secsz`
homesz=`expr 282624 '*' $secsz`
usrsz=`expr 1781184 '*' $secsz`

for i in root home usr
do
    mkdir -p $mountpoint/$i
done

sudo mount -t minix -o loop,offset=$rootoff,sizelimit=$rootsz $image $mountpoint/root
sudo mount -t minix -o loop,offset=$homeoff,sizelimit=$homesz $image $mountpoint/home
sudo mount -t minix -o loop,offset=$usroff,sizelimit=$usrsz $image $mountpoint/usr
