# Link dotfiles
ln -s ~/.dotfiles/zshrc ~/.zshrc
ln -s ~/.dotfiles/bashrc ~/.bashrc
ln -s ~/.dotfiles/tmux.conf ~/.tmux.conf
ln -s ~/.dotfiles/gitconfig ~/.gitconfig

# Install bins
brew install neovim
brew install fzf
brew install tmux
brew install ag
brew install jq
brew install miller

# Configure neovim
mkdir -p ~/.config/nvim
ln -s ~/.dotfiles/init.vim ~/.config/nvim/init.vim
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > ~/dein.installer.sh
mkdir -p ~/.cache/dein
chmod 700 ~/dein.installer.sh
~/dein.installer.sh ~/.cache/dein
rm ~/dein.installer.sh

# Install tmux plugin manager
mkdir -p ~/.tmux/plugins
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash
