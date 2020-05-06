ZSH_BASE=$HOME/.zsh
source $ZSH_BASE/antigen/antigen.zsh

antigen use oh-my-zsh

#
# Antigen bundles
#

# themes
antigen bundle caiogondim/bullet-train-oh-my-zsh-theme 

# general
antigen bundle common-aliases
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle extract
antigen bundle z

# docker
antigen bundle docker
antigen bundle docker-compose
antigen bundle docker-machine
antigen bundle greymd/docker-zsh-completion

# git
antigen bundle git

# homesick
antigen bundle iamthememory/homesick-zsh-completion

# node
antigen bundle nvm

# python
antigen bundle pyenv

# ruby
antigen bundle rbenv

# custom
antigen bundle $ZSH_BASE/plugins/autocd-workspace --no-local-clone
antigen bundle $ZSH_BASE/plugins/custom-aliases --no-local-clone

#
# Antigen theme
#
antigen theme caiogondim/bullet-train-oh-my-zsh-theme 
export BULLETTRAIN_VIRTUALENV_FG=black

antigen apply

#
# Configuration
#

# Global
zstyle ':completion:*' special-dirs true
export EDITOR='vim'

# Flutter
export PATH="$PATH:$HOME/workspace/tools/flutter/bin"

# pyenv
export PYENV_VIRTUALENV_DISABLE_PROMPT=1
eval "$(pyenv virtualenv-init -)"
