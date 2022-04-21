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

export ARCH="$(uname -m)"

if [[ $ARCH == "x86_64" ]]
then
  if [[ "$(sysctl -in sysctl.proc_translated)" == "1" ]]
  then
    echo "Running on Rosetta"
  else
    echo "Running on native Intel"
  fi

  source ~/.dotfiles/zshrc_x86
elif [[ $ARCH == "arm64" ]]
then
  echo "Running on ARM"
  source ~/.dotfiles/zshrc_arm64
else
  echo "Running on unknown architecture"
fi

# zsh vi mode
ZVM_VI_INSERT_ESCAPE_BINDKEY=jk
# Append a command directly

# SSH Agent
if [ $(ps ax | grep "[s]sh-agent" | wc -l) -eq 0 ] ; then
    eval $(ssh-agent -s) > /dev/null
    if [ "$(ssh-add -l)" = "The agent has no identities." ] ; then
        ssh-add ~/.ssh/github > /dev/null 2>&1
    fi
fi

# FZF
zvm_after_init_commands+=('[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh')
export FZF_DEFAULT_COMMAND='ag --ignore=node_modules --ignore=.git --hidden --follow -g ""'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_CTRL_T_OPTS="--preview '(highlight -O ansi -l {} 2> /dev/null || cat {} || tree -C {}) 2> /dev/null | head -100'"

# https://gpanders.com/blog/the-definitive-guide-to-using-tmux-256color-on-macos/
export TERMINFO_DIRS=$TERMINFO_DIRS:$HOME/.local/share/terminfo

# Subl
export PATH="/Applications/Sublime Text.app/Contents/SharedSupport/bin:$PATH"
