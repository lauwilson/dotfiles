# Ensure dotfiles bin directory is loaded before usr/bin
PATH="/usr/local/bin:$PATH"
PATH="$PATH:/Users/wilson/Library/Android/sdk/tools"

# Currently removed anaconda from path
#PATH="$PATH:/Users/wilson/anaconda/bin"
#
PATH="$HOME/.rvm/bin:$PATH" # Add RVM to PATH for scripting

# Place custom scripts at the head of PATH
PATH="/Users/wilson/.dotfiles/mac-scripts:$PATH"
export PATH

#export PATH="/usr/local/bin:$PATH:/Library/android/sdk/tools"
#export PATH="$PATH:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Applications/MAMP/Library/bin:/usr/texbin"
#
# load rbenv if available
if which rbenv &>/dev/null ; then
  eval "$(rbenv init - --no-rehash)"
  fi

