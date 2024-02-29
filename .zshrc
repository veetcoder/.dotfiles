eval "$(/opt/homebrew/bin/brew shellenv)"
[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"

plug "${XDG_CONFIG_HOME:-$HOME/.config}/zsh/exports.sh"

plug "zsh-users/zsh-autosuggestions"
plug "zsh-users/zsh-syntax-highlighting"
plug "jeffreytse/zsh-vi-mode"

autoload -Uz compinit
compinit

eval "$(starship init zsh)"
eval "$(zoxide init zsh --cmd cd)"
