eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(starship init zsh)"
eval "$(zoxide init zsh --cmd cd)"
source $HOMEBREW_PREFIX/opt/antidote/share/antidote/antidote.zsh
antidote load

alias vim=nvim
alias v=nvim
alias ls=lsd
