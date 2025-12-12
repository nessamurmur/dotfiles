# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Overview

This is a personal dotfiles repository for managing shell configuration, git settings, and development tool setup across machines.

## Installation

Run the install script to set up a new machine:
```bash
./install.sh
```

This installs: Homebrew, Atuin (shell history), Neovim with LazyVim, zsh config, git config, and Claude Code.

## Structure

- `zsh/` - Shell configuration (`.exports` for PATH, `.aliases` for shortcuts)
- `git/` - Git configuration (`.gitconfig` for user/diff settings, `.gitignore` for global ignores)
- `install.sh` - Bootstrap script for new machines

## Key Configuration

- Neovim is the configured diff tool for git (`git difftool`)
- Global gitignore includes Clojure/Leiningen artifacts
- Shell aliases: `gitl` (pretty log), `gits` (short status), `gitd` (diff), `be` (bundle exec)
