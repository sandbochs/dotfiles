# dotfiles

### Backing Up
- copy ~/.sandbochs & ~/.ssh
- check in and push and changes to ~/.dotfiles

### Installation

- Install [homebrew](https://brew.sh/)
- `git clone --recursive git@github.com:sandbochs/dotfiles.git ~/.dotfiles`
- `chmod +x ~/.dotfiles/install.sh`
- `~/.dotfiles/install.sh`
- Open nvim and run: `:call dein#install()`
- `tmux`
- `ctrl-a + I`

### Post Install
- Install iterm2
- Import iterm2 profile from ~/.dotfiles/iterm.json
- Install font [DroidSansMonoNerdFontComplete](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/DroidSansMono)
