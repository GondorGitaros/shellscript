#!/bin/bash

cd-back(){
    cd ..
}
update() {
    sudo apt update -y && sudo apt full-upgrade -y
}

neofetch() {
    sudo apt install neofetch -y
}

neovim() {
    sudo apt install snapd -y
    sudo snap install nvim --classic
}

neovim-config() {
    mkdir -p ~/.config
    sudo apt install git -y
    git clone https://github.com/GondorGitaros/nvim.git
    mv nvim/ ~/.config/
}

tmux() {
    sudo apt install tmux -y
}

ripgrep() {
    sudo apt install ripgrep -y
}

bashrc-file() {
    git clone https://github.com/GondorGitaros/bashrc ~/bashrc
    rm ~/.bashrc
    mv ~/bashrc/.bashrc ~/
    source ~/.bashrc
}

install-npm() {
    sudo apt install npm -y
}

install-openssh() {
    sudo apt install openssh-client -y
}

# Main
cd-back
update
neofetch
neovim
neovim-config
tmux
ripgrep
bashrc-file
install-npm
install-openssh

