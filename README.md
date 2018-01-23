dotfiles
----------------

### Installation (I should script this...)
----------------

- `git clone --recursive git@github.com:sandbochs/dotfiles.git ~/.dotfiles`
-`ln -s ~/.dotfiles/zshrc ~/.zshrc`
- `ln -s ~/.dotfiles/bashrc ~/.bashrc`
- `ln -s ~/.dotfiles/tmux.conf ~/.tmux.conf`
- `ln -s ~/.dotfiles/gitconfig ~/.gitconfig`
- `brew install neovim`
- `mkdir -p ~/.config/nvim`
- `ln -s ~/.dotfiles/init.vim ~/.config/nvim/init.vim`
- `curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > ~/dein.installer.sh`
- `mkdir -p ~/.cache/dein`
- `chmod 700 ~/dein.installer.sh`
- `~/dein.installer.sh ~/.cache/dein`
- Open nvim and run: `:call dein#install()`
