#!/bin/bash
Now=$(find /home/v4/Desktop/test)
Backup=$(cat home/v4/Desktop/Backup.txt)
readarray -t array <<<"$Backup"
echo "Folder bi xoa: "
for i in "${array[@]}"
do 
	 [[ "$Now" == *"$i"* ]]; then
	 	echo $i
	 fi
echo -e "$Now" > home/v4/Desktop/test
