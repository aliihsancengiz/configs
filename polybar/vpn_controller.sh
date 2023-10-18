#!/bin/bash


get_vpn_status()
{
	res=$(nmcli connection show Profitap | grep -i GENERAL.STATE | awk '{print $2}')
	if [ "activated" = "$res" ]
	then
		echo "UP"
	else
		echo "DOWN"
	fi
}

toggle_vpn()
{
	status=$(get_vpn_status)
	echo $status
	if [ "$status" = "UP" ]
	then
		nmcli connection down Profitap
	else
		nmcli connection up Profitap
	fi
}

format_vpn_status()
{
	echo "VPN $(get_vpn_status)"
}

case $1 in
		"--status") format_vpn_status;;
		"--toggle") toggle_vpn;; 
esac


