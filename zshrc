# Homebrew
export PATH="/bin:/usr/local/bin:/usr/bin:/usr/local/sbin:$PATH"

# Pip Bin
export PATH="/Users/elliot/Library/Python/2.7/bin:$PATH"

# NVM
export NVM_DIR="/Users/elliot/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
export PATH=./node_modules/.bin:$PATH

# Postgres App
export PATH=/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH

# Antigen
source ~/.dotfiles/antigen/antigen.zsh
source ~/.dotfiles/bundle.zsh

# Aliases
source ~/.dotfiles/aliases.zsh

# Keybindings
source ~/.dotfiles/keybind.zsh

# ENV
source ~/.dotfiles/keys.zsh

# History
source ~/.dotfiles/history.zsh

# work
source ~/.sandbochs/work.zsh

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
# Add Go
export PATH="$PATH:$HOME/.rvm/bin:/usr/local/go/bin"

# FZF
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_COMMAND='ag -g ""'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

