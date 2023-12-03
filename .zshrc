export GPG_TTY=$(tty)

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(git)

source $ZSH/oh-my-zsh.sh

source <(kubectl completion zsh)

alias cat="bat"
alias ls="eza"
alias k="kubecolor"

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

[ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"
