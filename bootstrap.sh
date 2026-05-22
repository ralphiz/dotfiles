#!/bin/zsh
# bootstrap.sh — sets up a fresh Mac from dotfiles

DOTFILES="$HOME/.dotfiles"

echo "🚀 Starting bootstrap..."

# ─── Homebrew ──────────────────────────────────────────────────────────────────
if ! command -v brew &>/dev/null; then
  echo "📦 Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
  echo "✓ Homebrew already installed"
fi

# ─── Packages ──────────────────────────────────────────────────────────────────
echo "📦 Installing packages from Brewfile..."
brew bundle install --file="$DOTFILES/Brewfile"

# ─── Symlinks ──────────────────────────────────────────────────────────────────
echo "🔗 Creating symlinks..."

symlink() {
  local src="$1"
  local dst="$2"
  if [ -f "$dst" ] && [ ! -L "$dst" ]; then
    echo "  Backing up existing $dst"
    mv "$dst" "$dst.backup"
  fi
  ln -sf "$src" "$dst"
  echo "  ✓ $dst → $src"
}

symlink "$DOTFILES/.zshrc"           "$HOME/.zshrc"
symlink "$DOTFILES/.zsh_aliases"     "$HOME/.zsh_aliases"
symlink "$DOTFILES/.zsh_exports"     "$HOME/.zsh_exports"
symlink "$DOTFILES/.zsh_functions"   "$HOME/.zsh_functions"

mkdir -p "$HOME/.config"
symlink "$DOTFILES/config/starship.toml" "$HOME/.config/starship.toml"
symlink "$DOTFILES/config/tmux.conf"    "$HOME/.tmux.conf"

# ─── Default Shell ─────────────────────────────────────────────────────────────
if [ "$SHELL" != "/bin/zsh" ]; then
  echo "🐚 Setting zsh as default shell..."
  chsh -s /bin/zsh
else
  echo "✓ zsh already default shell"
fi

echo ""
echo "✅ Bootstrap complete! Restart your terminal."
