# zsh-dot-files
## Requirements
- [zsh](https://github.com/robbyrussell/oh-my-zsh/wiki/Installing-ZSH)
- [homesick](https://github.com/technicalpickles/homesick/)
- [powerline fonts](https://github.com/powerline/fonts)

# Install
```zsh
homesick clone elafo/zsh-dot-files
homesick link zsh-dot-files
```
# Themes

- [bullet-train](https://github.com/caiogondim/bullet-train-oh-my-zsh-them) 

# Plugins

It uses [`oh-my-zsh`](http://ohmyz.sh/) framework under the hood

## Community plugins

### General purposes
- [oh-my-zsh/common-aliases](https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/common-aliases)
- [oh-my-zsh/extract](https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/extract)
- [oh-my-zsh/z](https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/z)
- [zsh-users/zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
- [zsh-users/zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)

### Docker
- [oh-my-zsh/docker](https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/docker)
- [oh-my-zsh/docker-compose](https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/docker-compose)
- [unixorn/docker-helpers.zshplugin](https://github.com/unixorn/docker-helpers.zshplugin)

### Git
- [oh-my-zsh/git](https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/git)

### Homesick
- [iamthememory/homesick-zsh-completion](https://github.com/iamthememory/homesick-zsh-completion)

### Node
- [oh-my-zsh/npm](https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/npm)
- [oh-my-zsh/nvm](https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/nvm)

### Ruby
- [oh-my-zsh/rvm](https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/rvm)

### Tmux & tmuxinator
- [oh-my-zsh/tmux](https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/tmux)
- [oh-my-zsh/tmuxinator](https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/tmuxinator)

## Custom plugins
### Autocd-workspace
My development environment expects to have every repository under a `~/workspace` folder.

This plugin lets you `cd` into every folder under `~/workspace` without having to type the `~/workspace` part of the path by setting `cdpath+=~/workspace`. This way we could type `cd company/project` from anywhere to access `~/workspace/company/project` folder

### custom-aliases
A plugin to add aliases not found in any other community plugin
