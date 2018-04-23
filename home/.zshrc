ZSH_CUSTOM=$HOME/.zsh-custom

# Load antigen
source ~/.antigen/antigen.zsh

# Load oh-my-zsh
antigen use oh-my-zsh

#
# Antigen bundles
#
antigen bundle caiogondim/bullet-train-oh-my-zsh-theme 
antigen bundle docker
antigen bundle docker-compose
antigen bundle docker-machine
antigen bundle git
antigen bundle rvm
antigen bundle common-aliases
antigen bundle iamthememory/homesick-zsh-completion

# custom
antigen bundle $ZSH_CUSTOM/plugins/autocd-workspace --no-local-clone

#
# Antigen theme
#
antigen theme caiogondim/bullet-train-oh-my-zsh-theme 


antigen apply

zstyle ':completion:*' special-dirs true
