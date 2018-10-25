#!/usr/bin/env bash
set -e

# Remove old links
sudo rm -rf ~/.xinitrc
sudo rm -rf ~/.Xresources
sudo rm -rf ~/bin
sudo rm -rf ~/.config/autorandr
sudo rm -rf ~/.config/dunst
sudo rm -rf ~/.config/fish/config.fish
sudo rm -rf ~/.config/fish/functions/fish_prompt.fish
sudo rm -rf ~/.config/kak/kakrc
sudo rm -rf ~/.config/qutebrowser/config.py
sudo rm -rf ~/.config/qutebrowser/darculized-all-sites.css
sudo rm -rf ~/.config/ranger/rc.conf
sudo rm -rf ~/.config/ranger/scope.sh

ln -sf $PWD/dotfiles/.xinitrc ~/.xinitrc
ln -sf $PWD/dotfiles/.Xresources ~/.Xresources
ln -sf $PWD/dotfiles/bin $HOME
chmod +x $HOME/bin/*

mkdir -p ~/.config
ln -sf $PWD/dotfiles/autorandr ~/.config

mkdir -p ~/.config/dunst
ln -sf $PWD/dotfiles/dunst/dunstrc ~/.config/dunst/dunstrc

mkdir -p ~/.config/fish/functions
ln -sf $PWD/dotfiles/fish/config.fish ~/.config/fish/config.fish
ln -sf $PWD/dotfiles/fish/functions/fish_prompt.fish ~/.config/fish/functions/fish_prompt.fish

mkdir -p ~/.config/kak
ln -sf $PWD/dotfiles/kak/kakrc ~/.config/kak/kakrc

mkdir -p ~/.config/qutebrowser
ln -sf $PWD/dotfiles/qutebrowser/config.py ~/.config/qutebrowser/config.py
ln -sf $PWD/dotfiles/qutebrowser/darculized-all-sites.css ~/.config/qutebrowser/darculized-all-sites.css

mkdir -p ~/.config/ranger
ln -sf $PWD/dotfiles/ranger/rc.conf ~/.config/ranger/rc.conf
ln -sf $PWD/dotfiles/ranger/scope.sh ~/.config/ranger/scope.sh
