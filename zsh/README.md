# ZSH Configuration

This directory contains my personal ZSH configuration files.

## Files

- `.zshrc` - Main ZSH configuration file
- `.zprofile` - ZSH profile configuration
- `.zshrc.pre-oh-my-zsh` - Pre-oh-my-zsh configuration

## Installation

To use these configurations:

1. Clone this repository
2. Create symbolic links to these files in your home directory:
   ```bash
   ln -s ~/path/to/this/repo/zsh/.zshrc ~/.zshrc
   ln -s ~/path/to/this/repo/zsh/.zprofile ~/.zprofile
   ln -s ~/path/to/this/repo/zsh/.zshrc.pre-oh-my-zsh ~/.zshrc.pre-oh-my-zsh
   ```

## Requirements

- ZSH shell
- Oh My ZSH (based on the presence of `.zshrc.pre-oh-my-zsh`) 