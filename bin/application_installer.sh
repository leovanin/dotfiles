TAPS="caskroom/cask neovim/neovin caskroom/font"
BREWS="aria2 curl mas neovim nmaps nvm openssl packer-completion pyenv s3cmd rename reatach-to-user-namespace gpgme git fzf doctl terraform-docs tig tmux tash jq wget unrar tree heroku zsh hub xz diff-so-fancy binutils"

BREWS_LINUX="grep gnu-sed gnu-tar"
CASKS="atom alfred docker firefox dropbox flash-player google-chrome google-drive istat-menus iterm2 java macdown openemu opera skype postman slack qbittorent spotify spectacle sublime-text simple-comic teamviewer virtualbox tunnelblick vlc vegrant whatsapp font-sourcecodepro-nerd-font-mono"

MAS_APPS="918858936 485812721 425424353 926036361 823766827 715768417"
echo "Preparing needed taps"
for i in ${TAPS}; do
  brew tap ${i}
done

echo "Installing default binaries"
for i in ${BREWS}; do
  brew install ${i}
done

echo "Installing linux bineaires"
for i in ${BREWS_LINUX}; do
  brew install ${i} --with-default-names
done

echo "Installing Applications"
for i in ${CASKS}; do
  brew cask install --appdir=/Applications ${i}
done

echo "Installing MacAppStore Applications"
for i in ${MAS_APPS}; do
  mas install ${i}
done
