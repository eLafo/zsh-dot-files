# zsh-dot-files

<!-- toc -->

- [Requirements](#requirements)
- [Install](#install)
- [Themes](#themes)
- [Plugins](#plugins)
  * [Community plugins](#community-plugins)
    + [General purposes](#general-purposes)
    + [Docker](#docker)
    + [Git](#git)
    + [Homesick](#homesick)
    + [asdf](#asdf)
  * [Custom plugins](#custom-plugins)
    + [Autocd-workspace](#autocd-workspace)
    + [custom-aliases](#custom-aliases)

<!-- tocstop -->

## Requirements
- [zsh](https://github.com/robbyrussell/oh-my-zsh/wiki/Installing-ZSH)
- [homesick](https://github.com/technicalpickles/homesick/)
- [gnupg for asdf](https://github.com/asdf-vm/asdf-nodejs)

## Install
```zsh
homesick clone elafo/zsh-dot-files
homesick link zsh-dot-files
```
## Themes

### [Powerlevel10k](https://github.com/romkatv/powerlevel10k)

![Powerlevel10k]https://raw.githubusercontent.com/romkatv/powerlevel10k-media/master/prompt-styles-high-contrast.png)

It needs nerd fonts installed. You can take a look [here](https://github.com/romkatv/powerlevel10k#meslo-nerd-font-patched-for-powerlevel10k)

## Plugins

It uses [`oh-my-zsh`](http://ohmyz.sh/) framework under the hood

### Community plugins

#### General purposes
- [oh-my-zsh/common-aliases](https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/common-aliases)
- [oh-my-zsh/extract](https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/extract)
- [zsh-users/zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
- [zsh-users/zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)

#### Docker
- [oh-my-zsh/docker](https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/docker)
- [oh-my-zsh/docker-compose](https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/docker-compose)
- [unixorn/docker-helpers.zshplugin](https://github.com/unixorn/docker-helpers.zshplugin)

#### Git
- [oh-my-zsh/git](https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/git)

#### Homesick
- [iamthememory/homesick-zsh-completion](https://github.com/iamthememory/homesick-zsh-completion)

#### asdf
- [oh-my-zsh/asdf](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/asdf)
### Custom plugins
#### Autocd-workspace
My development environment expects to have every repository under a `~/workspace` folder.

This plugin lets you `cd` into every folder under `~/workspace` without having to type the `~/workspace` part of the path by setting `cdpath+=~/workspace`. This way we could type `cd company/project` from anywhere to access `~/workspace/company/project` folder

#### custom-aliases
A plugin to add aliases not found in any other community plugin
