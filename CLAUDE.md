# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Overview

This is a zsh dotfiles repository managed via [homesick](https://github.com/technicalpickles/homesick/). The files in `home/` are symlinked to the user's home directory.

## Installation

```zsh
homesick clone elafo/zsh-dot-files
homesick link zsh-dot-files
```

## Architecture

- **Plugin Manager**: Uses [Antigen](https://github.com/zsh-users/antigen) (git submodule at `home/.zsh/antigen/`)
- **Theme**: [Powerlevel10k](https://github.com/romkatv/powerlevel10k) - requires Nerd Fonts
- **Framework**: oh-my-zsh (loaded via Antigen)

### Key Files

- `home/.zshrc` - Main zsh configuration, loads Antigen bundles and sets up environment
- `home/.p10k.zsh` - Powerlevel10k theme configuration
- `home/.zsh/plugins/` - Custom local plugins

### Custom Plugins

Located in `home/.zsh/plugins/`, loaded via Antigen with `--no-local-clone`:

- **autocd-workspace**: Adds `~/workspace` to `cdpath`, enabling `cd company/project` from anywhere
- **custom-aliases**: Custom aliases (`mux` for tmuxinator)
- **poetry**: Poetry completion support

### Version Managers Configured

pyenv, rbenv, nvm, jenv, gvm, phpenv

## Making Changes

When adding new Antigen bundles, add them to `home/.zshrc` in the appropriate section. For custom plugins, create a new directory under `home/.zsh/plugins/` with a `<plugin-name>.plugin.zsh` file.
