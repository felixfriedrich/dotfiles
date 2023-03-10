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

# Pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"

# Install Ruby Gems to ~/gems
export GEM_HOME="$HOME/gems"
export PATH="$HOME/gems/bin:$PATH"
eval "$(rbenv init -)"

# brew install zsh-kubectl-prompt
autoload -U colors; colors
source /opt/homebrew/etc/zsh-kubectl-prompt/kubectl.zsh
RPROMPT='%{$fg[white]%}($ZSH_KUBECTL_PROMPT)%{$reset_color%}'
