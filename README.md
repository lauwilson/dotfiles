Dotfiles Instructions
---------------------

1. Install Homebrew

   /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

2. Install Brewfile

   brew tap homebrew/brewfile

3. Run Brewfile

   brew bundle

4. Run setup script

   sh setup.sh

5. If you are on El Captian or greater... comment out the code in /etc/zprofile

   sudo vim /etc/zprofile

6. Install oh-my-zsh

   sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

7. Install zsh-syntax-highlighting into the .oh-my-zsh/custom/plugins folder

   git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

Python3 Support for NeoVim
--------------------------
1. Run 'pip3 install neovim'
