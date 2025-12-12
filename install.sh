#!/bin/bash

echo "[1/6] Installing packages"
paru -S noctalia-shell neovim code flatpak scrcpy krita studio-one-7

echo "[1.1/6] Install Ruby"
curl --proto '=https' --tlsv1.2 -LsSf https://github.com/spinel-coop/rv/releases/download/v0.3.0/rv-installer.sh | sh

echo "[1.2/6 Install Python]"
curl -LsSf https://astral.sh/uv/install.sh | sh

echo "[2/6] Installing atuin"
bash <(curl --proto '=https' --tlsv1.2 -sSf https://setup.atuin.sh)

echo "[3/6] Setting up LazyVim"
git clone http://github.com/LazyVim/starter ~/.config/nvim/
cp config/nvim/lua/plugins/rose-pine.lua ~/.config/nvim/lua/plugins/

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
