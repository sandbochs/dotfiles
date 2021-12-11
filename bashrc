# NVM
export NVM_DIR="/Users/elliot/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# FZF
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# Aliases
alias vi="nvim"
alias vim="nvim"
alias ll="ls -alh"
alias src="source ~/.bash_profile"
alias vrc="vi ~/.bash_profile"

# Functions
psp () { lsof -n -i4TCP:$@ | grep LISTEN; }

[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
. "$HOME/.cargo/env"
