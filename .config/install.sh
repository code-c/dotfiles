#!bin/zsh
## Installation Script for setting up PDE

# determine the OS
# TODO: Prompt user for Mac or Linux distro

##### Install tools (MacOS specific) #####
# if ($os=macOS)
# grab brew first from: https://docs.brew.sh/
echo "xcode-select --install"
echo "/bin/bash -c '$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)'"

# depending on the OS select the correct installer
$install='sudo brew install'

# elseif (debian Linux)
# $install='sudo apt install'

#install moitoring tools and language managers
echo "$install btop pyenv rbenv nvm"

# install my neovim dependencies (for telescope.nvim and mason.nvim respectively)
echo "$install ripgrep wget"

#install fonts (NEEDS TESTING)
# echo "brew tap homebrew/cask-fonts && brew install --cask font-lekton-nerd-font"

# Install Apps and Programs
echo "$install obsidian prusaslicer orcaslicer"
