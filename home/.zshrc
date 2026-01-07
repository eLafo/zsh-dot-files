# Ensure no console output during zsh initialization
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/.asdf/completions:$FPATH
  autoload -Uz compinit
  compinit
fi

# Pyenv configuration
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

ZSH_BASE=$HOME/.zsh

# Set ZSH_CACHE_DIR before Antigen loads oh-my-zsh plugins
# (Antigen doesn't set this properly, causing cache errors)
export ZSH_CACHE_DIR="${XDG_CACHE_HOME:-$HOME/.cache}/oh-my-zsh"
[[ -d "$ZSH_CACHE_DIR/completions" ]] || mkdir -p "$ZSH_CACHE_DIR/completions"

source $ZSH_BASE/antigen/antigen.zsh

antigen use oh-my-zsh

# Antigen bundles
# General
antigen bundle common-aliases
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle extract

# Docker
antigen bundle docker
antigen bundle docker-compose
antigen bundle greymd/docker-zsh-completion

# Git
antigen bundle git

# Homesick
antigen bundle iamthememory/homesick-zsh-completion

# Brew
antigen bundle brew

# Rbenv
antigen bundle rbenv

# Poetry
antigen bundle darvid/zsh-poetry
export ZSH_POETRY_AUTO_ACTIVATE=1
export ZSH_POETRY_AUTO_DEACTIVATE=1

# Python
antigen bundle pyenv
antigen bundle virtualenv
antigen bundle pipenv
path+=("$HOME/.local/bin")
export PATH

# jenv
antigen bundle jenv

# Custom
antigen bundle $ZSH_BASE/plugins/autocd-workspace --no-local-clone
antigen bundle $ZSH_BASE/plugins/custom-aliases --no-local-clone
antigen bundle $ZSH_BASE/plugins/poetry --no-local-clone

# Antigen theme
antigen theme romkatv/powerlevel10k

antigen apply

# Configuration

# Global
# zstyle ':completion:*' special-dirs true
export EDITOR='vim'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Rbenv
if command -v rbenv &>/dev/null; then
  eval "$(rbenv init - zsh)"
fi




[[ -s "/Users/elafo/.gvm/scripts/gvm" ]] && source "/Users/elafo/.gvm/scripts/gvm"

export PHPENV_ROOT="/Users/elafo/.phpenv"
if [ -d "${PHPENV_ROOT}" ]; then
  export PATH="${PHPENV_ROOT}/bin:${PATH}"
  eval "$(phpenv init -)"
fi

export PATH="/opt/homebrew/bin:$PATH"
export PATH="/Users/elafo/.config/herd-lite/bin:$PATH"
export PHP_INI_SCAN_DIR="/Users/elafo/.config/herd-lite/bin:$PHP_INI_SCAN_DIR"


# Herd injected PHP 8.3 configuration.
export HERD_PHP_83_INI_SCAN_DIR="/Users/elafo/Library/Application Support/Herd/config/php/83/"


# Herd injected PHP binary.
export PATH="/Users/elafo/Library/Application Support/Herd/bin/":$PATH


# Herd injected PHP 8.4 configuration.
export HERD_PHP_84_INI_SCAN_DIR="/Users/elafo/Library/Application Support/Herd/config/php/84/"

# Added by Windsurf
export PATH="/Users/elafo/.codeium/windsurf/bin:$PATH"
