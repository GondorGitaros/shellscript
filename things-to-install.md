update {
    // arch
    sudo pacman -Syu
    // apt
    sudo apt update && sudo apt full-upgrade
neofetch {
    // arch 
    sudo pacman -S neofetch,
    // debian (apt based)
    sudo apt install neofetch
}
neovim {
    // apt
    sudo apt install snapd
    sudo snap install nvim
    // arch
    sudo pacman -S neovim
}
neovim-config {
    // apt
    sudo mkdir .config
    sudo apt install git
    git clone https://github.com/GondorGitaros/nvim.git
    sudo mv nvim/ .config/
    // arch
    sudo mkdir .config
    git clone https://github.com/GondorGitaros/nvim.git
    sudo mv nvim/ .config/
}
tmux {
    // arch
    sudo pacman -S tmux
    // apt
    sudo apt install tmux
}
ripgrep {
    // arch
    sudo pacman -S ripgrep
    // apt
    sudo apt install ripgrep
}
bashrc-file {
    // arch 
    git clone https://github.com/GondorGitaros/bashrc
    sudo rm .bashrc
    sudo mv ~/bashrc/.bashrc ~/.bashrc
    source .bashr
    // apt
    git clone https://github.com/GondorGitaros/bashrc
    sudo rm .bashrc
    sudo mv ~/bashrc/.bashrc ~/.bashrc
    source .bashr
}

