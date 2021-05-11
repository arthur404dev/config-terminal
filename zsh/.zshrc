# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Add bash PATH
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/unix-user/.oh-my-zsh"

# ZSH Basic Config
ZSH_THEME="powerlevel10k/powerlevel10k"
# ZSH_THEME="spaceship"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# Add Brew to PATH
eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)

# Local Configs:

setopt AUTO_CD

# Named Directories:
hash -d home=/mnt/c/Users/win-user
hash -d dev=~/dev
hash -d 404dev=~/dev/404dev
hash -d prog=/mnt/x/OneDrive/Programming
hash -d vscode=/mnt/c/Users/win-user/AppData/Local/Programs/Microsoft\ VS\ Code
# Aliases
alias home="cd ~home"
alias vscode="~vscode/Code.exe"
alias dev="cd ~dev"
alias 404dev="cd ~404dev"
alias prog="cd ~prog"
alias reload="source ~/.zshrc"
alias install="sudo apt-get install"
alias zshconfig="code $HOME/.zshrc"
alias delete="rm -rf"
alias myip="curl http://ipecho.net/plain; echo"
alias open="/mnt/c/Windows/explorer.exe"
# Git Aliases
alias gi="git init"
alias gc="git commit -m"
alias ga="git add"
alias gpo="git push origin"
alias gb="git branch"
alias gcb="git checkout -b"
alias gs="git status"
alias gss="git status -s"
alias gd="git diff"
alias gds="git diff --stat"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
# LSD Config
alias ls='lsd'
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'

# GoLang

export GOPATH=/mnt/c/Users/win-user/dev/goworkspace
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOPATH

# Exports
export PATH="/home/linuxbrew/.linuxbrew/opt/node@12/bin:$PATH"
