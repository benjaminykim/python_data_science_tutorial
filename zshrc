# OH MY ZSH
export ZSH="/Users/kernel-ares/.oh-my-zsh"
ZSH_THEME="agnoster"
plugins=(
	git
	zsh-syntax-highlighting
	zsh-autosuggestions
	)
source $ZSH/oh-my-zsh.sh

# ALIASES
alias ll='ls -al'
alias cl='clear'
alias lc='clear && ll'
alias ..='cd ..'
alias ...='cd ../..'
alias reload='source ~/.zshrc'
