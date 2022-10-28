#!/bin/sh

# run ansible-playbook
ansible-playbook --ask-become-pass ~/ansible/local.yml

# zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.local/share/zsh/plugins/zsh-autosuggestions/

# zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.local/share/zsh/plugins/zsh-syntax-highlighting/

# clean up
rm -rf .bash* .ansible

mkdir ~/.local/share/shell
touch ~/.local/share/shell/history
