Dotfiles Instructions
=====================

**1. Install Homebrew**

   /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

**2. Add Homebrew Github API Token**

   touch ~/.homebrew_github_api_token

   Login to Github and generate a new API Token.
   Copy the token as the sole contents of the homebrew_github_api_token file.

**3. Install Brewfile**

   brewfile is automatically installed with Homebrew now. (6/8/2018)

**4. Run Brewfile**

   brew bundle

**5. Run setup script**

   sh setup.sh

**6. If you are on El Captian or greater... comment out the code in /etc/zprofile**

   sudo vim /etc/zprofile

**7. Install oh-my-zsh**

   sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

**8. Install zsh-syntax-highlighting into the .oh-my-zsh/custom/plugins folder**

   git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

<!---
Install Atom packages
---------------------
   apm install --packages-file ~/.dotfiles/package-list.txt

   **Note: To update package-list.txt:**  
   apm list --installed --bare > package-list.txt

Python3 Support for NeoVim
--------------------------
1. Run 'pip3 install neovim'
-->
