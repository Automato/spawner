sudo su -
mkdir loopdir
mount -o loop your-image.iso loopdir
mkdir cd
rsync -a -H --exclude=TRANS.TBL loopdir/ cd
umount loopdir
mkdir irmod
cd irmod
gzip -d < ../cd/install/2.6/initrd.gz | \
    cpio --extract --verbose --make-directories --no-absolute-filenames
cp ../my_preseed.cfg preseed.cfg
find . | cpio -H newc --create --verbose | \
    gzip -9 > ../cd/install/2.6/initrd.gz
cd ../
rm -fr irmod/
 cd cd
 md5sum `find -follow -type f` > md5sum.txt
 cd ..
 genisoimage -o test.iso -r -J -no-emul-boot -boot-load-size 4 \
 -boot-info-table -b isolinux/isolinux.bin -c isolinux/boot.cat ./cd
