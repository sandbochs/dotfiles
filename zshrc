# PG 9.5
# 9.6 goes bonkers on macOS Sierra
export PATH="/usr/local/opt/postgresql@9.5/bin:$PATH"

# NVM
export NVM_DIR="/Users/elliot/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# FZF
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Aliases
source ~/.dotfiles/aliases.zsh

# Keybindings
source ~/.dotfiles/keybind.zsh

# ENV
source ~/.dotfiles/lanetix.zsh
source ~/.dotfiles/keys.zsh

# History
source ~/.dotfiles/history.zsh

# Antigen
source ~/.dotfiles/antigen/antigen.zsh
source ~/.dotfiles/bundle.zsh
