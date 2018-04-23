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
antigen bundle iamthememory/homesick-zsh-completion

#
# Antigen theme
#
antigen theme caiogondim/bullet-train-oh-my-zsh-theme 


antigen apply

zstyle ':completion:*' special-dirs true
