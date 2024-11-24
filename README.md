# 🦊 My Dotfiles

Welcome to my **dotfiles** repo, it's mostly gruvbox themed and still a work in progress—I'll be adding more dotfiles as I tweak and refine my setup.

## 📂 Structure

```plaintext
dotfiles/
├── .config/nvim/           # Neovim config
├── .config/tmux/           # tmux config
```

## Requirements

Ensure you have the following installed on your system:

### Git

```bash
$ sudo apt install git # for Debian-based systems
```

```bash
$ sudo pacman -S git # for Arch-based systems
```

```bash
$ sudo dnf install git # for Fedora-based systems
```

```bash
$ brew install git # for macOS
```

````bash

### GNU STOW

```bash
$ sudo apt install stow # for Debian-based systems
````

```bash
$ sudo pacman -S stow # for Arch-based systems
```

```bash
$ sudo dnf install stow # for Fedora-based systems
```

```bash
$ brew install stow # for macOS
```

## Installation

First clone the repo to your $HOME directory.

```bash
$ git clone https://github.com/rywndr/dotfiles.git
$ cd dotfiles
```

then use GNU Stow to symlink the dotfiles to your home directory.

```bash
$ stow .
```

📝 Feel free to use, adapt, and share!
