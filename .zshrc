# if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
# fi

export PATH=/opt/homebrew/bin/:$PATH

export ZSH="$HOME/.oh-my-zsh"

# ZSH_THEME="powerlevel10k/powerlevel10k"

# eval "$(oh-my-posh init zsh --config $(brew --prefix oh-my-posh)/themes/1_shell.omp.json)"
eval "$(oh-my-posh init zsh --config ~/.config/omp/catppuccin_mocha_blackorchestra.omp.json)"

plugins=(
	git
	zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

alias homelab68="ssh ihor@192.168.68.103"
alias homelab31="ssh ihor@192.168.31.103"
alias portainer="ssh ihor@192.168.31.46"
alias proxmox="ssh root@192.168.31.200"
alias truenas="ssh root@192.168.31.19"
alias vim=nvim
alias cat=bat
alias ls="eza -a --color=always --git --no-filesize --icons=always --no-time --no-user --no-permissions"
eval "$(zoxide init zsh)"
alias cd="z"

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

source /Users/ihor/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# AWS cli aoutocompletion enable
autoload bashcompinit && bashcompinit
autoload -Uz compinit && compinit
complete -C '/opt/homebrew/bin/aws_completer' aws

