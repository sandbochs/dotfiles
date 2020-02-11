# Aliases
alias vi="nvim"
alias vim="nvim"
alias ll="ls -al"
alias src="source ~/.zshrc"
alias vrc="vi ~/.zshrc"
alias gb="git branch"
alias gs="git status"
alias gp="git pull --rebase"
alias gd="git diff"
alias gdo="git diff origin"
alias gl="git log"
alias glp="git log -p"
alias gc-="git checkout -"
alias gc="git checkout"
alias gau="git add -u; git status"
alias gcam="git commit -am"
alias gcm="git commit -m"
alias gwip="git commit -am 'wip'; git status"
alias jobs='jobs -dlp'
alias ns='nvm use; npm start'
alias nm='nodemon --exec npm start -e js,sql'
alias cognito='aws cognito-identity'
alias pgup="rm -f /usr/local/var/postgres/postmaster.pid && launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist"
alias pgdown="launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist"

alias mvfix='rm -rf ~/.zcompdump*'

# Functions
psp () { lsof -n -i4TCP:$@ | grep LISTEN; }
