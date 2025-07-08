# Personal macOS Dotfiles

Welcome to my personal dotfiles repository — a collection of configuration files and scripts I use to set up and maintain my development environment on macOS.

This setup is tailored for a tiling window manager workflow with `yabai`, `skhd`, and a minimal terminal-driven ecosystem.

---

## Setup

All configuration files are **soft linked** to their expected system paths. This allows for centralized version control without duplicating files across the system.

### Mappings

| Repo Path               | Target Path                                             |
|-------------------------|---------------------------------------------------------|
| `tmux/.tmux.conf`       | `~/.tmux.conf`                                          |
| `zsh/.zshrc`            | `~/.zshrc`                                              |
| `vscode/settings.json`  | `~/Library/Application Support/Code/User/settings.json` |
| `vscode/snippets`       | `~/Library/Application Support/Code/User/snippets`      |
| `yabai/.yabairc`        | `~/.yabairc`                                            |
| `skhd/.skhdrc`          | `~/.skhdrc`                                             |
| `bash/.bash_profile`    | `~/.bash_profile`                                       |
| `git/.gitconfig`        | `~/.gitconfig`                                          |
| `git/.gitignore-global` | `~/.gitignore-global`                                   |

---

## License

MIT License — feel free to use, fork, and modify.
