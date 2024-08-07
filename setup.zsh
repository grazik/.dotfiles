#HOMEBREW
echo "install homebrew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

    (echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> ~/.zprofile
    eval "$(/opt/homebrew/bin/brew shellenv)"

#NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.0/install.sh | bash

#SDKMAN
curl -s "https://get.sdkman.io" | bash


#SPACEHIP
echo "Install spaceship"
git clone https://github.com/spaceship-prompt/spaceship-prompt.git $ZSH/custom/themes/spaceship-prompt --depth=1

ln -s $ZSH/custom/themes/spaceship-prompt/spaceship.zsh-theme $ZSH/custom/themes/spaceship.zsh-theme

echo "Set spacheship symlinks"
ln -s ~/.dotfiles/spaceship.zsh $ZSH/custom/spaceship.zsh
ln -s ~/.dotfiles/aliases.zsh $ZSH/custom/aliases.zsh


#NEOVIM
echo "install neovim"
brew install neovim

echo "install plug"
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

mkdir -p ~/.config/nvim
ln -s ~/.dotfiles/init.vim ~/.config/nvim/init.vim
ln -s ~/.dotfiles/.ideavimrc ~/.ideavimrc

#GIT
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig        


#OH MY ZSH
echo "Install Oh My ZSH plugins"

echo "K"
git clone https://github.com/supercrabtree/k $ZSH/custom/plugins/k

echo "FZF"
brew install fzf

echo "zsh-syntax-highlighting"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
