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
alias laws='aws --endpoint-url http://localhost:8000 --region fakeRegion'

# LX Aliases
alias gw='cd ~/env/dev/ui/; yarn watch -- --max-old-space-size=4096'
alias envtest="MIGRATION_ENV=test npm run mocha -t 4000"
alias spl='cd ~/env/dev/database-workers/; npm run start-pusher-listen'
alias latest='cd ~/env/dev/api; ./bin/db latest_production && lxkill all && ./bin/db restore lanetix backups/latest.sql'
alias mystack='mv ~/.lx.mystack.env ~/.lx.aws.env && src'
alias devstack='mv ~/.lx.aws.env ~/.lx.mystack.env && src'

# Functions
psp () { lsof -n -i4TCP:$@ | grep LISTEN; }
psa () { LOCAL_DYNAMODB=true ~/env/dev/ui/node_modules/mocha/bin/mocha $@ --opts client/test/mocha.opts --max-old-space-size=3062; }
