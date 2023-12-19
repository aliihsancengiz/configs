#!/bin/bash



function update_configs()
{
	# nvim configs update
	# mkdir -p ~/configs/config/nvim/lua
	# cp ~/.config/nvim/init.vim ~/configs/config/nvim 
	# cp ~/.config/nvim/lua/init.lua ~/configs/config/nvim/lua/init.lua

	#vim config update
	cp ~/.vimrc ~/configs/.vimrc

	#tmux config update
	cp ~/.tmux.conf ~/configs/.tmux.conf

	#zsh configs update
	cp ~/.zshrc ~/configs/.zshrc

	#alacritty config update
	mkdir -p ~/configs/alacritty
	cp ~/.config/alacritty/alacritty.yml ~/configs/config/alacritty/alacritty.yml
}

function install_configs()
{
	# nvim configs install
	# mkdir -p ~/.config/nvim/lua
	# cp ~/configs/config/nvim/init.vim ~/.config/nvim/init.vim
	# cp ~/configs/config/nvim/lua/init.lua ~/.config/nvim/lua/init.lua

	# install vim configs
	cp ~/configs/.vimrc ~/.vimrc

	#install tmux configs
	cp ~/configs/.tmux.conf ~/.tmux.conf

	#  install zsh configs
	cp ~/configs/.zshrc ~/.zshrc

	# install alacritty configs
	cp ~/configs/config/alacritty/alacritty.yml ~/.config/alacritty/alacritty.yml
}

eval "$@"
