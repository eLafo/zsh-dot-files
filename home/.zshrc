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
antigen bundle unixorn/docker-helpers.zshplugin

# git
antigen bundle git

# homesick
antigen bundle iamthememory/homesick-zsh-completion

# node
antigen bundle nvm

# ruby
antigen bundle rvm

# elixir
antigen bundle asdf

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

antigen apply

#
# Configuration
#

# Global
zstyle ':completion:*' special-dirs true
export EDITOR='vim'

#
# Hack (asdf completion does not work when installed via antigen 
# https://github.com/asdf-vm/asdf/issues/97
#
# The following code has been copied directly from the repo https://github.com/robbyrussell/oh-my-zsh/blob/master/plugins/asdf/asdf.plugin.zsh
# Load asdf completions, if found.
if [ -f $ASDF_DIR/completions/asdf.bash ]; then
    . $ASDF_DIR/completions/asdf.bash
fi
