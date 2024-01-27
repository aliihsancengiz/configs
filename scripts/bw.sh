#!/bin/bash



get_pwd() {
	bw list items | jq >> /tmp/.tmp.pwds
}

susr=$(cat /tmp/.tmp.pwds | jq ".[].name" | dmenu -b)

if [ ! -z "$susr" ]
then
	pwd=$(cat /tmp/.tmp.pwds | jq -r ".[] | select(.name==$susr)" | jq '.login.password')
	if [ ! -z $pwd ]
	then
		echo $pwd | tr -d '"' | xclip -sel clip
	fi
fi


