#!/bin/bash


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
