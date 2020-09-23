echo "######################################################"
echo "##### OneMix3(S) for BlissOS V11.11 Patch Script #####"
echo "######################################################"
echo "***** Patch System Files"
cp -rp ./etc/init.sh /etc
sleep 1
cp -rp ./etc/ntfs.sh /etc
sleep 1
chmod 644 /etc/init.sh
chmod 644 /etc/ntfs.sh
echo "***** Patch System Files          COMPLETE"
sleep 1
echo " "
echo "######################################################"
echo "***** Patch Booting Media File"
cp ./system/media/bootanimation.zip /system/media
sleep 1
chmod 644 /system/media/bootanimation.zip
echo " "
echo "***** Patch Booting Media File           COMPLETE"
date
echo "######################################################"
echo "##### OneMix3(S) for BlissOS V11.11 Patch Script #####"
echo "#####              Made By keiyasplus            #####"
echo "######################################################" 
echo " "
echo " "
echo " Please Reboot Android System........"
