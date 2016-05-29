Dotfiles Instructions
---------------------

1. Install Homebrew

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

2. Install Brewfile

brew tap homebrew/brewfile

3. Run Brewfile

brew bundle

4. Run setup script

sh symlink.sh

5. If you are on El Captian or greater... comment out the code in /etc/zprofile

sudo vim /etc/zprofile

Python3 Support for NeoVim
--------------------------
1. Run 'pip3 install neovim'
