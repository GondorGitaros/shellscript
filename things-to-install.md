update {
   // apt
    sudo apt update -y && sudo apt full-upgrade -y
neofetch {
   // debian (apt based)
    sudo apt install neofetch -y
}
neovim {
    // apt
    sudo apt install snapd -y
    sudo snap install nvim -y

neovim-config {
    // apt
    mkdir .config
    sudo apt install git -y
    git clone https://github.com/GondorGitaros/nvim.git
    mv nvim/ .config/

tmux {
    // apt
    sudo apt install tmux -y
}
ripgrep {
    // apt
    sudo apt install ripgrep -y
}
bashrc-file {
    // apt
    git clone https://github.com/GondorGitaros/bashrc
    rm .bashrc
    mv ~/bashrc/.bashrc ~/.bashrc
    source .bashr
}
install-npm{
    // apt
    sudo apt install npm -y
}
install-openssh {
    sudo apt install openssh-client -y
}
