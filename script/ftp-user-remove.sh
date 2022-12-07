c#!/bin/bash

cat ./list-user.txt | while read line
do
echo $line > ./tmp.txt
i=$(cat ./tmp.txt | awk  '{print $1}')
echo $i
userdel $i
rm -rf /production-dupont-ftp/$i
rm -rf /home/$i
sudo systemctl reload vsftpd
done