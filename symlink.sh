#!/bin/bash
############################
# symlink.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables


dir=~/.dotfiles                    # dotfiles directory
olddir=~/.dotfiles_old             # old dotfiles backup directory
#files="bashrc vimrc vim zshenv zshrc oh-my-zsh"    # list of files/folders to symlink in homedir
files="vimrc vim zshenv zshrc oh-my-zsh"    # temp list of files/folders to symlink in homedir
##########

# create dotfiles_old in homedir
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
printf "...done\n\n"

# change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir
printf "...done\n\n"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks 
for file in $files; do
    echo "Moving ~/.$file into $olddir"
    mv ~/.$file ~/dotfiles_old/
done
printf "...done\n\n"
for file in $files; do
    echo "Symbolic linking ~/.$file to ~/.dotfiles/$file"
    ln -sFfh $dir/$file ~/.$file
done
printf "...done\n\n"

# setup neovim configurations
printf "Setting up neovim\n"

if [[ ! -d "$HOME/.config" ]]; then
    echo "~/.config doesnt exist, creating dir"
    mkdir -p $HOME/.config
fi
# link the necessary config files
echo "Symbolic linking ~/.config/nvim to ~/.dotfiles/vim"
ln -sFfh $dir/vim $HOME/.config/nvim
echo "Symbolic linking ~/.dotfiles/vim/init.vim to ~/.dotfiles/nvimrc"
ln -sFfh $dir/nvimrc $HOME/.config/nvim/init.vim
printf "...done\n"
