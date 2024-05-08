#!/bin/bash

# Update system
update_system() {
    echo "Updating system..."
    sudo pacman -Syu
}

# Install Neofetch
install_neofetch() {
    echo "Installing Neofetch..."
    sudo pacman -S neofetch
}

# Install Neovim
install_neovim() {
    echo "Installing Neovim..."
    sudo pacman -S neovim
}

# Configure Neovim
configure_neovim() {
    echo "Configuring Neovim..."
    sudo mkdir -p ~/.config
    git clone https://github.com/GondorGitaros/nvim.git
    sudo mv nvim/ ~/.config/
}

# Install Tmux
install_tmux() {
    echo "Installing Tmux..."
    sudo pacman -S tmux
}

# Install Ripgrep
install_ripgrep() {
    echo "Installing Ripgrep..."
    sudo pacman -S ripgrep
}

# Configure Bashrc
configure_bashrc() {
    echo "Configuring Bashrc..."
    git clone https://github.com/GondorGitaros/bashrc
    sudo rm ~/.bashrc
    sudo mv bashrc/.bashrc ~/
    source ~/.bashrc
}

# Main function
main() {
    update_system
    install_neofetch
    install_neovim
    configure_neovim
    install_tmux
    install_ripgrep
    configure_bashrc

    echo "Installation completed!"
}

# Execute main function
main

