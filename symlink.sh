#!/bin/sh
############################
# symlink.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables


dir=~/.dotfiles                    # dotfiles directory
olddir=~/.dotfiles_old             # old dotfiles backup directory
#files="bashrc vimrc vim zshenv zshrc oh-my-zsh"    # list of files/folders to symlink in homedir
files="vimrc vim"    # temp list of files/folders to symlink in homedir
zshfiles="zshenv zshrc"
##########

# create dotfiles_old in homedir
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
printf "...done\n\n"

# change to the dotfiles directory
echo "[ Changing to the $dir directory ]"
cd $dir
printf "...done\n\n"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks 
printf "[ Backup dotfiles ]\n"
for file in $files; do
    echo "Moving ~/.$file into $olddir"
    mv ~/.$file ~/dotfiles_old/
done
printf "...done\n\n"

printf "[ Backup zsh dotfiles ]\n"
for file in $zshfiles; do
    echo "Moving ~/.$file into $olddir"
    mv ~/.$file ~/dotfiles_old/
done
printf "...done\n\n"

printf "[ Symlink dotfiles ]\n"
for file in $files; do
    echo "Symbolic linking ~/.$file to ~/.dotfiles/$file"
    ln -sFfh $dir/$file ~/.$file
done
printf "...done\n\n"

printf "[ Symlink zsh dotfiles ]\n"
for file in $zshfiles; do
    echo "Symbolic linking ~/.$file to ~/.dotfiles/zsh-files/$file"
    ln -sFfh $dir/zsh-files/$file ~/.$file
done
printf "...done\n\n"

# setup neovim configurations
printf "[ Setting up neovim ]\n"

if [[ ! -d "$HOME/.config" ]]; then
    echo "~/.config doesnt exist, creating dir"
    mkdir -p $HOME/.config
fi
# link the necessary config files
echo "Symbolic linking ~/.config/nvim to ~/.dotfiles/vim"
ln -sFfh $dir/vim $HOME/.config/nvim

echo "Symbolic linking ~/.dotfiles/vim/init.vim to ~/.dotfiles/nvimrc"
ln -sFfh $dir/nvimrc $HOME/.config/nvim/init.vim

echo "Symbolic linking ~/.dotfiles/zsh-files/alias.zsh to ~/.oh-my-zsh/custom/alias.zsh"
ln -sFfh $dir/zsh-files/alias.zsh $HOME/.oh-my-zsh/custom/alias.zsh

echo "Symbolic linking ~/.dotfiles/zsh-files/clean_custom.zsh-theme to ~/.oh-my-zsh/themes/clean_custom.zsh-theme"
ln -sFfh $dir/zsh-files/clean_custom.zsh-theme $HOME/.oh-my-zsh/themes/clean_custom.zsh-theme

printf "...done\n"
