# dotfiles

> https://medium.com/toutsbrasil/how-to-manage-your-dotfiles-with-git-f7aeed8adf8b

## Dependencies

* `brew install rbenv pyenv direnv ack`
* [oh-my-zsh](https://ohmyz.sh/#install): `sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`

### GPG

```
brew install gpg2 pinentry-mac`
# https://github.com/jorgelbg/pinentry-touchid
brew tap jorgelbg/tap
brew install pinentry-touchid
pinentry-touchid -fix
pinentry-touchid -check
```

## Setup

```
# git clone --bare git@github.com:felixfriedrich/dotfiles.git $HOME/.dotfiles
# alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
# dotfiles checkout
```


## zsh

> https://scriptingosx.com/2019/06/moving-to-zsh-part-2-configuration-files/
