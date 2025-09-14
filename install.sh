chsh -s /usr/bin/zsh

echo "[1/5] Installing LazyVim"
brew install neovim

# LazyVim
git clone http://github.com/LazyVim/starter ~/.config/nvim

echo "[2/5] Installing oh-my-post"
# oh-my-post
brew install jandedobbeleer/oh-my-posh/oh-my-posh
oh-my-posh font install hack

echo "[3/5] Copying zsh config"
cp ./zsh/.exports ~/.exports
cp ./zsh/.aliases ~/.aliases
echo 'source ~/.exports' >> ~/.zshrc
echo 'source ~/.aliases' >> ~/.zshrc

echo "[4/5] Copying git config"
cp ./git/.gitignore ~/.gitignore
cp ./git/.gitconfig ~/.gitconfig

echo "[5/5] Installing warp"
brew install --cask warp
