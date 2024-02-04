# Path to oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export TERM=alacritty

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' frequency 13

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Disable marking untracked files under VCS as dirty, makes repository status check for large repositories faster
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='nvim'
else
  export EDITOR='nvim'
fi

#----------------------------------------------------------------------------------------
# Alias's

# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias vim="nvim"
alias get_idf='. $HOME/.config/esp/esp-idf/export.sh'
# use config as the 'git' command for the bare git repo used for my dotfiles
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'


#----------------------------------------------------------------------------------------
# Powerlevel10k

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

#----------------------------------------------------------------------------------------
# Customizations

# set the computer@user to be more anonymous
export PS1="codec@dev %1~ %# "

#----------------------------------------------------------------------------------------
# Homebrew

eval "$(/opt/homebrew/bin/brew shellenv)"


#-----------------------------------------------------------------------------------------
# python

if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi

export PYENV_ROOT="$HOME/.pyenv" 
export PATH="$PYENV_ROOT/bin:$PATH" 
eval "$(pyenv init --path)" 
eval "$(pyenv init -)"


#------------------------------------------------------------------------------------------
# Yarn

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH="/usr/local/opt/openssl@3/bin:$PATH"


#------------------------------------------------------------------------------------------
# Ruby

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"


#------------------------------------------------------------------------------------------
# Java

JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk-14.0.2.jdk/Contents/Home"
PATH="${JAVA_HOME}/bin:${PATH}"
export PATH

export M2_HOME="/usr/local/Cellar/maven/3.6.3_1"
PATH="${M2_HOME}/bin:${PATH}"
export PATH


#------------------------------------------------------------------------------------------
# NVM (node version manager)

export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"


#------------------------------------------------------------------------------------------
# Postgresql

export PATH="/opt/homebrew/opt/postgresql@16/bin:$PATH"


#------------------------------------------------------------------------------------------
#PowerLevel10k

source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Created by `pipx` on 2024-01-04 05:41:34
export PATH="$PATH:/Users/codiecottrell/.local/bin"

PATH="/Users/codiecottrell/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/Users/codiecottrell/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/Users/codiecottrell/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/Users/codiecottrell/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/Users/codiecottrell/perl5"; export PERL_MM_OPT;
