#!/usr/bin/zsh

# install dependencies
#/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" -y

# install CLIs
#brew install git gsed nodenv

# install Casks
#brew install hyper --cask

# install zplug for shellenv
if [ ! -e '/Users/eguchi/.zplug' ]; then
  . eval 'curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh'
fi

# deploy dotfiles to user directory
# cp ./.z* ~/
# cp ./.hyper.js ~/
# cp ./.vimrc ~/
