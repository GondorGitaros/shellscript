#!/bin/bash

# Cd back
cd-back() {
    cd ..
}
# Update system
update_system() {
    echo "Updating system..."
    sudo pacman -Syu --noconfirm
}

# Install Neofetch
install_neofetch() {
    echo "Installing Neofetch..."
    sudo pacman -S neofetch --noconfirm
}

# Install Neovim
install_neovim() {
    echo "Installing Neovim..."
    sudo pacman -S neovim --noconfirm
}

# Configure Neovim
configure_neovim() {
    echo "Configuring Neovim..."
    mkdir -p ~/.config
    git clone https://github.com/GondorGitaros/nvim.git
    mv nvim/ ~/.config/
}

# Install Tmux
install_tmux() {
    echo "Installing Tmux..."
    sudo pacman -S tmux --noconfirm
}

# Install Ripgrep
install_ripgrep() {
    echo "Installing Ripgrep..."
    sudo pacman -S ripgrep --noconfirm
}

# Configure Bashrc
configure_bashrc() {
    echo "Configuring Bashrc..."
    git clone https://github.com/GondorGitaros/bashrc
    rm ~/.bashrc
    mv bashrc/.bashrc ~/
    source ~/.bashrc
}

# Main function
main() {
    cd-back
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

