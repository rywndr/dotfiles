# 🦊 My Dotfiles

Welcome to my **dotfiles** repo, it's mostly gruvbox themed and still a work in progress—I'll be adding more dotfiles as I tweak and refine my setup.

## 📂 Structure

```plaintext
dotfiles/
├── fastfetch/
│   └── .config/
│       └── fastfetch/
|           └── ...
├── lf/
│   └── .config/
│       └── lf/
|           └── ...
├── nvim/
│   └── .config/
│       └── nvim/
|           └── ...
├── starship/
│   └── .config/
│       └── starship/
|           └── ...
├── suckless/
│   └── .config/
│       ├── dmenu/
|       |    └── ...
│       ├─── dwm/
|       |     └── ...
|       └──── st/
|             └── ...
├── tmux/
│   └── .config/
│       └── tmux/
|           └── ...
└── zsh/
    └── ...
```

## Requirements

Ensure you have the following installed on your system:

### Git

```bash
$ sudo apt install git # for Debian-based systems

$ sudo pacman -S git # for Arch-based systems

$ sudo dnf install git # for Fedora-based systems

$ brew install git # for macOS
```

### GNU STOW

```bash
$ sudo apt install stow # for Debian-based systems

$ sudo pacman -S stow # for Arch-based systems

$ sudo dnf install stow # for Fedora-based systems

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
