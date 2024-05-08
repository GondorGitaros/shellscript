#!/bin/bash

# Reinstall with ssh
reinstall() {
    rm -rf ~/shellscript/
    git clone git@github.com:GondorGitaros/shellscript.git
}
remove-bashrc() {
    rm bashrc/
}

#main
reinstall
remove-bashrc
