export ZSH=$HOME"/.oh-my-zsh"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="af-magic"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
plugins=(git kubectl helm)

source $ZSH/oh-my-zsh.sh

# kubectl auto completion
[[ $commands[kubectl] ]] && source <(kubectl completion zsh)

# Misc
export EDITOR=vim
alias l='ls -alh'
alias k='kubectl'
#alias docker='podman'
alias rmgitignore='cat .gitignore | ack -v '#' | ack "\S" | xargs -I {} rm -rf {}'

# PATH
export PATH=~/bin:$PATH
export PATH=~/go/bin:$PATH

# Direnv
eval "$(direnv hook zsh)"

# https://github.com/felixfriedrich/dotfiles
alias d='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# Pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"

# Install Ruby Gems to ~/gems
export GEM_HOME="$HOME/gems"
export PATH="$HOME/gems/bin:$PATH"
eval "$(rbenv init -)"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && source "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && source "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# brew tap superbrothers/zsh-kubectl-prompt
# brew install zsh-kubectl-prompt
autoload -U colors; colors
source /opt/homebrew/etc/zsh-kubectl-prompt/kubectl.zsh
RPROMPT='%{$fg[white]%}($ZSH_KUBECTL_PROMPT)%{$reset_color%}'
export PATH="/opt/homebrew/opt/mysql@5.7/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
