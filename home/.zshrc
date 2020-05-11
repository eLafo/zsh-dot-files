if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/.asdf/completions:$FPATH

  autoload -Uz compinit
  compinit
fi

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

ZSH_BASE=$HOME/.zsh
source $ZSH_BASE/antigen/antigen.zsh

antigen use oh-my-zsh

#
# Antigen bundles
#

# general
antigen bundle common-aliases
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle extract

# asdf
antigen bundle asdf

# docker
antigen bundle docker
antigen bundle docker-compose
antigen bundle docker-machine
antigen bundle greymd/docker-zsh-completion

# git
antigen bundle git

# homesick
antigen bundle iamthememory/homesick-zsh-completion

# custom
antigen bundle $ZSH_BASE/plugins/autocd-workspace --no-local-clone
antigen bundle $ZSH_BASE/plugins/custom-aliases --no-local-clone

#
# Antigen theme
#
antigen theme romkatv/powerlevel10k

antigen apply

#
# Configuration
#

# Global
# zstyle ':completion:*' special-dirs true
export EDITOR='vim'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
