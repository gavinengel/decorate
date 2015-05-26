#! /bin/sh
echo "[Symlinks Work]"



#dbox
rm -rf ~/.dbox
ln -s ~/Dropbox_work ~/.dbox



#single files
rm ~/.opera/speeddial.ini
ln -s ~/Dropbox_work/Settings/.opera/speeddial.ini ~/.opera/speeddial.ini


#filezilla
rm ~/.filezilla/sitemanager.xml
ln -s ~/Dropbox_work/Settings/.filezilla/sitemanager.xml ~/.filezilla/sitemanager.xml

