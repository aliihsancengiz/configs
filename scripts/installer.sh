#!/bin/bash


apt update

install_base(){
	apt install build-essential pkg-config git cmake python3 gcc g++ openssl clang clang-format wget curl openssh-server valgrind net-tools \
		wireshark jq btop ranger zoxide
	systemctl enable ssh --now
}


install_dev(){
	add-apt-repository ppa:jonathonf/vim
	apt install zsh vim tmux fonts-powerline bear exa

	# install fzf
	git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf

	# install cargo and alacritty
	curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
	cargo install alacritty

	# vim plugin
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	
	# oh my zsh install
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
	curl -sL install-node.vercel.app/lts | bash
	git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
	git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
	git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

	# nertfonts
	mkdir -p ~/.config
	git clone git@github.com:ryanoasis/nerd-fonts.git ~/.config


	# interactive installer
	~/.fzf/install
	~/.config/nerd-fonts/install.sh Hack
	~/.config/nerd-fonts/install.sh Hack-NF
	~/.config/nerd-fonts/install.sh Ubuntu
}

eval "$@"
