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
    + [Node](#node)
    + [Ruby](#ruby)
    + [Tmux & tmuxinator](#tmux--tmuxinator)
  * [Custom plugins](#custom-plugins)
    + [Autocd-workspace](#autocd-workspace)
    + [custom-aliases](#custom-aliases)

<!-- tocstop -->

## Requirements
- [zsh](https://github.com/robbyrussell/oh-my-zsh/wiki/Installing-ZSH)
- [homesick](https://github.com/technicalpickles/homesick/)
- [powerline fonts](https://github.com/powerline/fonts)

## Install
```zsh
homesick clone elafo/zsh-dot-files
homesick link zsh-dot-files
```
## Themes

- [bullet-train](https://github.com/caiogondim/bullet-train-oh-my-zsh-theme)

![bullet-train zsh theme](https://camo.githubusercontent.com/c5b0c78df1c3ca27bb2c5577114a92018bbdbee0/687474703a2f2f7261772e6769746875622e636f6d2f6361696f676f6e64696d2f62756c6c65742d747261696e2d6f682d6d792d7a73682d7468656d652f6d61737465722f696d672f707265766965772e676966 "bullet train theme")
## Plugins

It uses [`oh-my-zsh`](http://ohmyz.sh/) framework under the hood

### Community plugins

#### General purposes
- [oh-my-zsh/common-aliases](https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/common-aliases)
- [oh-my-zsh/extract](https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/extract)
- [oh-my-zsh/z](https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/z)
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

#### Node
- [oh-my-zsh/npm](https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/npm)
- [oh-my-zsh/nvm](https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/nvm)

#### Ruby
- [oh-my-zsh/rvm](https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/rvm)

#### Tmux & tmuxinator
- [oh-my-zsh/tmux](https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/tmux)
- [oh-my-zsh/tmuxinator](https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/tmuxinator)

### Custom plugins
#### Autocd-workspace
My development environment expects to have every repository under a `~/workspace` folder.

This plugin lets you `cd` into every folder under `~/workspace` without having to type the `~/workspace` part of the path by setting `cdpath+=~/workspace`. This way we could type `cd company/project` from anywhere to access `~/workspace/company/project` folder

#### custom-aliases
A plugin to add aliases not found in any other community plugin
