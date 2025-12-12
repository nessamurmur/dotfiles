#!/bin/bash

echo "[0/6] Installing homebrew"
NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
test -d ~/.linuxbrew && eval "$(~/.linuxbrew/bin/brew shellenv)"
test -d /home/linuxbrew/.linuxbrew && eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
echo "eval \"\$($(brew --prefix)/bin/brew shellenv)\"" >>~/.bashrc

echo "[1/6] Installing atuin"
bash <(curl --proto '=https' --tlsv1.2 -sSf https://setup.atuin.sh)

echo "[2/6] Installing LazyVim"
brew install neovim

# LazyVim
echo "[3/6] Setting up LazyVim"
git clone http://github.com/LazyVim/starter ~/.config/nvim/

echo "[4/6] Copying zsh config"
cp ./zsh/.exports ~/.exports
cp ./zsh/.aliases ~/.aliases
echo 'source ~/.exports' >>~/.zshrc
echo 'source ~/.aliases' >>~/.zshrc

echo "[5/6] Copying git config"
cp ./git/.gitignore ~/.gitignore
cp ./git/.gitconfig ~/.gitconfig

echo "[6/6] Installing claude code"
  curl -fsSL https://claude.ai/install.sh | bash
fi
