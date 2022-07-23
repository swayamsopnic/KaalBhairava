#!/bin/bash
#Author = MrKingAnubis
#Purpose = DNS Zone Transfer
#Created Date = Sat Jul 23 12:37:12 AM EDT 2022
#Version = 1.0
#START#
figlet KaalBhairava
echo
echo
echo
echo Developed By KingMrAnubis
echo Please Rate my product experince and tell me at telegram
echo contact me at https://t.me/KingMrAnubis
echo Enjoy
echo please read the Readme at github to use it efficiently
echo
echo
echo -e "Please specify The Domain: \c"
read -r hostname



echo -e "Mention The File Name you want to save without extension: \c"
read -r name 
host -t ns $hostname | cut -d " " -f 4 >> $name.txt
va=`echo $?`
if [ $va -gt 1 ];then
echo "$hostname Host is not Rechable"
else
echo `cat $name.txt`
echo "$hostname Host is Up"
fi
for i in `cat $name.txt`
do 
host -l $hostname $i >> output.txt
done
echo
echo
echo `figlet THANK YOU`

#END#

