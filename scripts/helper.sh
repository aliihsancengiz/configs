#!/bin/bash

ssh_file="$HOME/.ssh/config"

function connect_remote()
{
	dev=$(awk '/^Host/ {host=$2} /HostName/ {hostname=$2} /User/ {user=$2} /^$/ {printf("%s@%s\n", user, hostname)}' $ssh_file | fzf)
	if [ -n "$dev" ]; then
		if [ -n $TERM_PROGRAM ]; then
			tmux neww -n "$dev" "ssh $dev"
		else
			ssh $dev
		fi
	fi
}


#checkout branch with fzf
function checkout_branch()
{
	local branch_to_checkout;
	branch_to_checkout=$(git branch | fzf --multi)
	if [ -n "$branch_to_checkout" ]; then
		branch_to_checkout=$(echo "$branch_to_checkout" | sed 's/\* //')
		git checkout $branch_to_checkout
	fi
}

eval "$@"
