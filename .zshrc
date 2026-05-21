# ~/.dotfiles/.zshrc

# ─── Sources ───────────────────────────────────────────────────────────────────
[[ -f ~/.dotfiles/.zsh_exports ]]   && source ~/.dotfiles/.zsh_exports
[[ -f ~/.dotfiles/.zsh_aliases ]]   && source ~/.dotfiles/.zsh_aliases
[[ -f ~/.dotfiles/.zsh_functions ]] && source ~/.dotfiles/.zsh_functions

# ─── History ───────────────────────────────────────────────────────────────────
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt SHARE_HISTORY
setopt HIST_VERIFY

# ─── Navigation ────────────────────────────────────────────────────────────────
setopt AUTO_CD
setopt AUTO_PUSHD
setopt PUSHD_IGNORE_DUPS

# ─── Completion ────────────────────────────────────────────────────────────────
autoload -Uz compinit && compinit
setopt ALWAYS_TO_END
setopt AUTO_MENU
setopt COMPLETE_IN_WORD
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# ─── Plugins ───────────────────────────────────────────────────────────────────
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# ─── Prompt ────────────────────────────────────────────────────────────────────
eval "$(starship init zsh)"
