ZSH_BASE=$HOME/.zsh
source $ZSH_BASE/antigen/antigen.zsh

antigen use oh-my-zsh

#
# Antigen bundles
#
antigen bundle caiogondim/bullet-train-oh-my-zsh-theme 
antigen bundle common-aliases
antigen bundle docker
antigen bundle docker-compose
antigen bundle docker-machine
antigen bundle git
antigen bundle iamthememory/homesick-zsh-completion
antigen bundle nvm
antigen bundle rvm

# custom
antigen bundle $ZSH_BASE/plugins/autocd-workspace --no-local-clone

#
# Antigen theme
#
antigen theme caiogondim/bullet-train-oh-my-zsh-theme 

antigen apply

#
# Global Configuration
#
zstyle ':completion:*' special-dirs true
