# dotfiles

### Backing Up
- copy ~/.sandbochs & ~/.ssh
- check in and push and changes to ~/.dotfiles

### Installation

Install [homebrew](https://brew.sh/)
```sh
git clone --recursive git@github.com:sandbochs/dotfiles.git ~/.dotfiles
```

```sh
chmod +x ~/.dotfiles/install.sh
```
```sh
~/.dotfiles/install.sh
```

```sh
nvim
```

`:call dein#install()`

```sh
tmux
```

`ctrl-a + I`

### Post Install
- Install iterm2
- Import iterm2 profile from ~/.dotfiles/iterm.json
- Install font [DroidSansMonoNerdFontComplete](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/DroidSansMono)
