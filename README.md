# Dotfiles

I created this repo primarily to store my dotfiles and (hopefully) a guide to setting up a new MacBook. 

They should be cloned to the home directory so that the path is `~/.dotfiles/`. The included setup script creates symlinks from the home directory to the files which are located in `~/.dotfiles/`. The setup script is smart enough to back up existing dotfiles into a `~/.dotfiles_old/` directory.

The install script (`install.sh`) will:
1. Check if `oh-my-zsh` is installed, and install if not
2. Check if `Homebrew` is installed, and install if not
3. Install all `brew` dependencies
4. Back up existing dotfiles in the home directory to `~/.dotfiles_old/`
5. Create symlinks to the dotfiles in `~/.dotfiles/` to the home directory

## Installation
```
git clone git://github.com/devanshrj/dotfiles ~/.dotfiles
cd ~/.dotfiles
chmod +x install.sh
./install.sh
```

## Preliminaries
Install:
- [XCode Command Line tools](https://stackoverflow.com/questions/9329243/how-to-install-xcode-command-line-tools)
- [Homebrew](https://brew.sh)
- [Alacritty](https://github.com/alacritty/alacritty)
- Git
  - [Git first time setup](https://git-scm.com/book/en/v2/Getting-Started-First-Time-Git-Setup)
  - [Git Credential Manager](https://docs.github.com/en/get-started/getting-started-with-git/caching-your-github-credentials-in-git)

## Resources
- [awesome-dotfiles](https://github.com/webpro/awesome-dotfiles)
- [dotfiles.github.io](https://dotfiles.github.io/tutorials/)
- [michaeljsmalley/dotfiles](http://blog.smalleycreative.com/tutorials/using-git-and-github-to-manage-your-dotfiles/)
- [driesvints/dotfiles](https://github.com/driesvints/dotfiles#a-fresh-os-x-setup)
- [drew devault's dotfiles guide](https://drewdevault.com/2019/12/30/dotfiles.html)
- [brew, brew bundle, Brewfile](https://gist.github.com/ChristopherA/a579274536aab36ea9966f301ff14f3f)