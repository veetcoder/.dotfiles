eval "$(/opt/homebrew/bin/brew shellenv)"
[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"

plug "${XDG_CONFIG_HOME:-$HOME/.config}/zsh/exports.sh"

plug "zap-zsh/fzf"
plug "zsh-users/zsh-autosuggestions"
plug "zsh-users/zsh-syntax-highlighting"
plug "jeffreytse/zsh-vi-mode"
plug "aloxaf/fzf-tab"

autoload -Uz compinit
compinit

eval "$(starship init zsh)"
eval "$(zoxide init zsh --cmd cd)"

# pnpm
export PNPM_HOME="/Users/veetcoder/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
