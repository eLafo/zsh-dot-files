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

# go
antigen bundle golang
antigen bundle bbenne10/goenv

# homesick
antigen bundle iamthememory/homesick-zsh-completion

# node
antigen bundle nvm

# python
antigen bundle pyenv

# ruby
antigen bundle rbenv

# tmux & tmuxinator
antigen bundle tmux
antigen bundle tmuxinator

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
eval "$(goenv init -)"

