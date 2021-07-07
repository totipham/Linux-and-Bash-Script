#! /bin/bash

YELLOW='\033[1;33m'
CYAN='\033[0;36m'
printf '%bHostname  %-5s: %b%s\n' ${YELLOW} " " ${CYAN} $(hostname)
printf '%bRelease   %-5s: %b%s\n' ${YELLOW} " " ${CYAN} $(uname -r)
printf '%bCPU Info  %-5s:\n' ${YELLOW} " "
printf '%b+%-3s %s\n' ${CYAN} ' ' "$(lscpu | egrep 'Model name')"
printf '+%-3s %s\n' ' ' "$(lscpu | egrep 'Architecture')"
printf '+%-3s %s\n' ' ' "$(lscpu | egrep 'CPU MHz')"
printf '%bPhysical memory:\n' ${YELLOW} 
printf '%b+%-3s %s\n' ${CYAN} ' ' "$(grep MemTotal /proc/meminfo)"
printf '+%-3s %s\n' ' ' "$(grep MemFree /proc/meminfo)"
printf '%bWorking IP%-5s:\n%b%s\n' ${YELLOW} ' ' ${CYAN} "$(ifconfig | grep 'inet ' | awk '{ print $2 }')"
printf '%bWorking users%-1s:\n%b%s\n' ${YELLOW} ' ' ${CYAN} "$(awk -F ':' '{print $1}' /etc/passwd | sort -n)"
printf '%bProcess running with root privilege:\n%b%s\n' ${YELLOW} ${CYAN} "$(ps -aux | grep root | awk '{print $11}' | sort -n)"
printf '%bOpened ports%-3s:\n%b%s\n' ${YELLOW} ' ' ${CYAN} "$(iptables -nL | grep ':' | sort -k 7)" 
printf '%bWritable directory for 3rd user:\n%b%s\n' ${YELLOW} ${CYAN} "$(ls -la / | awk '{perm=$1;trd_wr=substr(perm,9,1);if(trd_wr=="w") print $9}')"
printf '%bInstalled packages:\n' ${YELLOW} 
printf '%b|%-10s|%-10s|\n' ${CYAN} 'Name' 'Version'
printf '%s\n' "$(dpkg-query -W -f='${package}\t${version}\n' | awk '{gsub("\\s+","\t\t\t|\t\t\t",$0); print}')"
