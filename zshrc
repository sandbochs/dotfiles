# NVM
export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Golang
export PATH=$PATH:/usr/local/go/bin

# FZF
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_COMMAND='ag -g ""'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

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

# Tilix
if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
        source /etc/profile.d/vte.sh
fi

# Extraterm
source /opt/extraterm-commands-0.49.1/setup_extraterm_zsh.zsh

# ssh-agent
if ! pgrep -u "$USER" ssh-agent > /dev/null; then
    ssh-agent > "$XDG_RUNTIME_DIR/ssh-agent.env"
fi
if [[ ! "$SSH_AUTH_SOCK" ]]; then
    eval "$(<"$XDG_RUNTIME_DIR/ssh-agent.env")"
fi
