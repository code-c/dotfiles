#!bin/zsh
## Installation Script for setting up PDE

##### Install tools (MacOS specific) #####
# grab brew first from: https://docs.brew.sh/
echo "xcode-select --install"
echo "/bin/bash -c '$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)'"

#install moitoring tools and language managers
echo "brew install btop pyenv rbenv nvm"

