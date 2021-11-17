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
source ~/.dotfiles/work.zsh

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
# Add Go
# export PATH="$PATH:$HOME/.rvm/bin:/usr/local/go/bin"
#
# Homebrew
if [ "$(sysctl -n sysctl.proc_translated)" = "1" ]; then
    local brew_path="/usr/local/homebrew/bin"
    eval "$(/usr/local/homebrew/bin/brew shellenv)"
else
    local brew_path="/opt/homebrew/bin"
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi
export PATH="${brew_path}:${PATH}"

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# Postgres App
#export PATH=/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH


# FZF
zvm_after_init_commands+=('[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh')
export FZF_DEFAULT_COMMAND='ag --ignore=node_modules --ignore=.git --hidden --follow -g ""'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_CTRL_T_OPTS="--preview '(highlight -O ansi -l {} 2> /dev/null || cat {} || tree -C {}) 2> /dev/null | head -100'"

# zsh vi mode
ZVM_VI_INSERT_ESCAPE_BINDKEY=jk
# Append a command directly

# SSH Agent
if [ $(ps ax | grep "[s]sh-agent" | wc -l) -eq 0 ] ; then
    eval $(ssh-agent -s) > /dev/null
    if [ "$(ssh-add -l)" = "The agent has no identities." ] ; then
        ssh-add ~/.ssh/sandbochs_m1_mba > /dev/null 2>&1
    fi
fi

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/elliot/dev/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/elliot/dev/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/elliot/dev/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/elliot/dev/google-cloud-sdk/completion.zsh.inc'; fi

export CLOUDSDK_PYTHON=python3

export PATH="/Users/elliot/Library/Python/3.8/bin:${PATH}"
