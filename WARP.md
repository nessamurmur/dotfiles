# WARP.md

This file provides guidance to WARP (warp.dev) when working with code in this repository.

## Repository Overview

This is a personal dotfiles repository for managing development environment configuration across machines. The repository contains configuration files for zsh, git, and installation scripts for a complete development environment setup.

## Architecture and Structure

- **`git/`** - Git configuration files (`.gitconfig`, `.gitignore`)
- **`zsh/`** - Zsh shell configuration (`.aliases`, `.exports`)  
- **`install.sh`** - Main installation script that sets up the entire environment

The dotfiles follow a modular approach where each tool has its own directory, and the install script orchestrates copying files to their proper locations in the user's home directory.

## Common Commands

### Initial Setup
```bash
# Set up the entire development environment
./install.sh
```

### Manual Configuration Updates
```bash
# Update git configuration
cp ./git/.gitconfig ~/.gitconfig
cp ./git/.gitignore ~/.gitignore

# Update shell configuration  
cp ./zsh/.exports ~/.exports
cp ./zsh/.aliases ~/.aliases

# Reload shell configuration
source ~/.zshrc
```

### Testing Configuration Changes
```bash
# Test git config
git config --list

# Test shell aliases
alias | grep git

# Test exports
echo $PATH
```

## Development Environment Components

The installation script sets up:

1. **Shell**: Switches to zsh and configures with oh-my-posh prompt
2. **Editor**: Installs Neovim with LazyVim configuration
3. **Version Control**: Configures git with personal settings and global gitignore
4. **Terminal**: Installs Warp terminal
5. **Node.js**: Sets up nvm for Node version management
6. **History**: Configures atuin for enhanced shell history

## Key Configuration Details

### Shell Environment
- Custom PATH modifications for local binaries (`~/.local/bin`)
- NVM integration for Node.js version management
- Atuin integration for shell history enhancement
- oh-my-posh with "easy-term" theme

### Git Configuration
- User email: `nessajane@nessajane.tech`
- User name: `Nessa Jane Marin`
- Default push behavior: current branch
- Difftool: nvim with diff mode
- Global gitignore includes Leiningen and SQLite files

### Shell Aliases
- `be` - Bundle exec shorthand
- `gitl` - Formatted git log with graph
- `gits` - Short git status
- `gitd` - Git diff

## File Modification Guidelines

When updating dotfiles:
1. Edit files in their respective directories (`git/`, `zsh/`)
2. Test changes locally before committing
3. Re-run relevant copy commands or `install.sh` to apply changes
4. The repository structure should remain modular with clear separation by tool