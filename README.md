# dotfiles

Personal macOS dotfiles for Ralph Cacho ([@ralphiz](https://github.com/ralphiz)).

## Structure

```
~/.dotfiles/
├── .zshrc              # Main zsh config, sources everything
├── .zsh_aliases        # Aliases
├── .zsh_exports        # Environment variables and PATH
├── .zsh_functions      # Custom shell functions
├── Brewfile            # Homebrew packages
├── bootstrap.sh        # Fresh machine setup script
├── backups/            # Backed up original dotfiles
└── config/
    └── starship.toml   # Starship prompt config
```

## Fresh Machine Setup

```bash
git clone https://github.com/ralphiz/dotfiles ~/.dotfiles
~/.dotfiles/bootstrap.sh
```

This will:
- Install Homebrew (if not installed)
- Install all packages from `Brewfile`
- Create symlinks for all dotfiles
- Set zsh as the default shell

## Managing Packages

Save current Homebrew packages:
```bash
brewsave
```

Restore packages on a new machine (handled by bootstrap):
```bash
brewinstall
```

## Updating Dotfiles

After making changes, reload your shell:
```bash
reload
```
