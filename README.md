# Dalssaso's dotfiles

# This is a work in progress :smile:

* If you want to try it out make sure you do the following steps
```
  brew install neovim/neovim/neovim
  echo "alias vim='nvim'" >> ~/.zshrc
  source ~/.zshrc
  git clone https://github.com/dalssaso/dotfiles.git ~/.dotfiles
  mkdir -p ~/.config
  cd ~/.config
  ln -s ~/.dotfiles/conf/nvim .
  vim +PlugInstall
```
