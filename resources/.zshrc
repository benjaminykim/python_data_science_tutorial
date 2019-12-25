#export PATH=~/anaconda3/bin:"$PATH"
# OH MY ZSH
export ZSH=".oh-my-zsh"
ZSH_THEME="agnoster"
plugins=(
	git
	)
source $ZSH/oh-my-zsh.sh

# ALIASES
alias ll='ls -al'
alias cl='clear'
alias lc='clear && ll'
alias ..='cd ..'
alias ...='cd ../..'
alias reload='source ~/.zshrc'
