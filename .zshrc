export ZSH=$HOME"/.oh-my-zsh"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="af-magic"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
plugins=(git kubectl helm)

source $ZSH/oh-my-zsh.sh


# Misc
export EDITOR=vim
alias l='ls -alh'

# PATH
export PATH=~/bin:$PATH

# Direnv
eval "$(direnv hook zsh)"

# .dotfiles (https://medium.com/toutsbrasil/how-to-manage-your-dotfiles-with-git-f7aeed8adf8b)
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# tgenv
# https://github.com/cunymatthieu/tgenv
export PATH="$HOME/.tgenv/bin:$PATH"
export TGENV_AUTO_INSTALL=true
