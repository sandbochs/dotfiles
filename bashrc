# PG 9.5
export PATH="/usr/local/opt/postgresql@9.5/bin:$PATH"

# NVM
export NVM_DIR="/Users/elliot/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# FZF
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# LX
source ~/.lanetix.env
source ~/env/.lxprofile
export LAUNCH_DARKLY_ENVIRONMENT_KEY="sdk-f8b92d72-a860-436a-ace4-665f0ea1859e"

# Aliases
alias vi="nvim"
alias vim="nvim"
alias ll="ls -al"
alias src="source ~/.bash_profile"
alias vrc="vi ~/.bash_profile"
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
alias gw='cd ~/env/dev/ui/; npm run watch'
alias cognito='aws cognito-identity'
alias nm='nodemon --exec npm start'
alias pgup="rm -f /usr/local/var/postgres/postmaster.pid && launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist"
alias pgdown="launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist"
alias envtest="MIGRATION_ENV=test npm run mocha -t 4000"
alias spl='cd ~/env/dev/database-workers/; npm run start-pusher-listen'
alias laws='aws --endpoint-url http://localhost:8000 --region fakeRegion'

# Functions
psp () { lsof -n -i4TCP:$@ | grep LISTEN; }

