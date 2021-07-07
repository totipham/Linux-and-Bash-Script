#!bin/bash
Now=$(find /home/kali/Desktop/Demo)
log=$(cat /home/kali/Desktop/bai2log.txt)
 
readarray -t array <<<"$Now"
 
echo "Folder duoc tao moi:"
 
for i in "${array[@]}"
do
        if ! [[ "$log" == *"$i"* ]];then
                echo $i
        fi
done
 
echo -e "$Now" > /home/kali/Desktop/bai2log.txt
