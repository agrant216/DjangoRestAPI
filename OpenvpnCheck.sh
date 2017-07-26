#!usr/bin/bash
IP="$(dig +short myip.opendns.com @resolver1.opendns.com)"
Time=date "+%H:%M:%S   %d/%m/%y"
substr=$(echo $IP| cut -d'.' -f 1)
if ["$substr" = "174"]; then
	openvpn /etc/openvpn/agrant216@gmail.com_ca-tr... &
	echo $(dig +short myip.opendns.com @resolver1.opendns.com)>> /home/pi/IpLog.txt
	echo $Time>>/home/pi/IpLog.txt
else
	echo "VPN currently running, nothing to do" >> IpLog.txt
	echo $Time>>/home/pi/IpLog.txt
fi
