echo "[0/5] Installing homebrew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

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
if [[ "$OSTYPE" == "darwin"* ]]; then
    # macOS
    brew install --cask warp
elif [[ -f /usr/lib/os-release ]] && grep -q "bluefin" /usr/lib/os-release; then
    # Bluefin Linux - download AppImage
    mkdir -p ~/.local/bin
    curl -L -o ~/Downloads "https://app.warp.dev/download?package=appimage" -o Warp-x64.AppImage
    chmod +x ~/Downloads/Warp-x64.AppImage
    echo "You will need to do some manual config of the warp AppImage"
else
    echo "Unsupported OS for Warp installation. Please install manually."
fi
