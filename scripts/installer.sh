#!/bin/bash


apt update

install_base(){
	apt install build-essential pkg-config git cmake python3 gcc g++ openssl clang clang-format wget curl openssh-server valgrind net-tools \
		wireshark jq btop ranger zoxide clipboard xclip
	systemctl enable ssh --now
}


install_dev(){
	apt install zsh vim-gtk3 tmux clangd universal-ctags fonts-powerline bear exa lua5.3
	# snap install nvim --classic

	# install fzf
	git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf


	# vim and neovim plugin manager
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	# sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
	# https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'	
	# git clone --depth 1 https://github.com/wbthomason/packer.nvim\
	# ~/.local/share/nvim/site/pack/packer/start/packer.nvim

	# oh my zsh install
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
	curl -sL install-node.vercel.app/lts | bash

	git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
	git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
	git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

	# nertfonts
	mkdir -p ~/.config
	git clone git@github.com:ryanoasis/nerd-fonts.git ~/.config
	~/.config/nerd-fonts/install.sh

	~/.fzf/install

	# install cargo and alacritty
	# curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
	cargo install alacritty

}

eval "$@"
