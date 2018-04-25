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

# docker
antigen bundle docker
antigen bundle docker-compose
antigen bundle unixorn/docker-helpers.zshplugin

# git
antigen bundle git

# homesick
antigen bundle iamthememory/homesick-zsh-completion

# node
antigen bundle nvm

# ruby
antigen bundle rvm

# tmux & tmuxinator
antigen bundle tmux
antigen bundle tmuxinator

# custom
antigen bundle $ZSH_BASE/plugins/autocd-workspace --no-local-clone
antigen bundle $ZSH_BASE/plugins/tmuxinator --no-local-clone

#
# Antigen theme
#
antigen theme caiogondim/bullet-train-oh-my-zsh-theme 

antigen apply

#
# Configuration
#

# Global
zstyle ':completion:*' special-dirs true
export EDITOR='vim'
