mountpoint=minix2bookmnt
image=minix2.img
secsz=512
rootoff=`expr 65 '*' $secsz`
usroff=`expr 2945 '*' $secsz`
rootsz=`expr 2880 '*' $secsz`
usrsz=`expr 256639 '*' $secsz`

for i in root usr
do
    mkdir -p $mountpoint/$i
done

sudo mount -t minix -o loop,offset=$rootoff,sizelimit=$rootsz $image $mountpoint/root
sudo mount -t minix -o loop,offset=$usroff,sizelimit=$usrsz $image $mountpoint/usr
