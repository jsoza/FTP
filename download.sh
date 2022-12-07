#craate /download-feed  forder
# crontab is : 
#15 8 * * * /usr/bin/flock -n /tmp/ftp-feed-download.lock /download-feed/download.sh > /tmp/ftp-feed-download.logs 2>&1
#change the user an password to download file fron ftp remote
download-feed
15 8 * * * /usr/bin/flock -n /tmp/ftp-feed-download.lock /download-feed/download.sh > /tmp/ftp-feed-download.logs 2>&1

#!/bin/bash 
rm -rf /download-feed/FTP_BK.zip
rm -rf /download-feed/FTP_BK
DIR1="/download-feed"
DIR2="/download-feed/FTP_BK"
DIR3="/develop-dupont-ftp/FTP_dealers"
HOST="dprdealers.dupontregistry.com"  
USER=""         
PASS=""           


cd $DIR1/
ftp -inv $HOST << EOF 
user $USER $PASS 
lcd  PATH/TO/LOCAL/DIRECTORY
mget FTP_BK.zip 
bye 
EOF
unzip $DIR1/FTP_BK.zip

#sleep 2m

sudo cp -r $DIR2/eBiz/* $DIR3/ebiz/
sudo cp -r $DIR2/Homenetinc/* $DIR3/Homenetinc/
sudo cp -r $DIR2/Netlook/* $DIR3/netlook/
sudo cp -r $DIR2/DealerDotCom/* $DIR3/DealerDotCom/
sudo cp -r $DIR2/AutoUplink/* $DIR3/AutoUplink/
sudo cp -r $DIR2/Mecum/* $DIR3/mecum/
sudo cp -r $DIR2/Vinsolutions/* $DIR3/vinsolutions/
sudo cp -r $DIR2/WebManager/* $DIR3/webmanager/
sudo cp -r $DIR2/Cobalt/* $DIR3/cobalt/
sudo cp -r $DIR2/BarretJackson/* $DIR3/BarrettJackson/
sudo cp -r $DIR2/RMAuctions/* $DIR3/RMAuctions/
sudo cp -r $DIR2/eCarList/* $DIR3/eCarList/
sudo cp -r $DIR2/AllAutoNetwork/* $DIR3/allautonet/
sudo cp -r $DIR2/Carweek/* $DIR3/carweek/
sudo cp -r $DIR2/vauto/* $DIR3/vauto/
sudo cp -r $DIR2/carsforsale/* $DIR3/Carsforsale/
sudo cp -r $DIR2/FirstLook/* $DIR3/FirstLook/
sudo cp -r $DIR2/DealersLink/* $DIR3/DealersLink/
sudo cp -r $DIR2/autotraderca/* $DIR3/autotraderca/
sudo cp -r $DIR2/WayneReaves/* $DIR3/WayneReaves/
sudo cp -r $DIR2/ELead/* $DIR3/ELead/
sudo cp -r $DIR2/DealerFire/* $DIR3/DealerFire/
sudo cp -r $DIR2/dealeraccelerate/* $DIR3/DealerAccelerate/
sudo cp -r $DIR2/Dealer_Inspire/* $DIR3/Dealer_Inspire/
sudo cp -r $DIR2/Dealer_eProcess/* $DIR3/Dealer_eProcess/
sudo cp -r $DIR2/DealerCenter/* $DIR3/DealerCenter/
sudo cp -r $DIR2/CreativeBespoke/* $DIR3/CreativeBespoke/
sudo cp -r $DIR2/Nuzu/* $DIR3/Nuzu/
sudo cp -r $DIR2/Jazel/* $DIR3/Jazel/
sudo cp -r $DIR2/Solera/* $DIR3/Solera/
sudo cp -r $DIR2/InventoryCC/* $DIR3/InventoryCC/


echo "updated "$(date) >> /download-feed/log.txt
