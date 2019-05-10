# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

autoload -Uz compinit
compinit
kitty + complete setup zsh | source /dev/stdin

# Exports
export TODOTXT_DEFAULT_ACTION=ls
export GOPATH="/home/daphne/src/go"
#export GOROOT
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/home/daphne/bin:$PATH:/home/daphne/.gem/ruby/2.5.0/bin:$GOPATH/bin"
ZSH_THEME="af-magic"
export EDITOR=vim
export LC_ALL=en_CA.UTF-8

# oh-my-zsh configs
plugins=(git ruby rails aws docker)


setopt hist_ignore_all_dups
HISTSIZE=100000
SAVEHIST=100000


# aliases
alias gcal="gcalcli --calendar 'Daphne Reed'"
alias paws="/vidyard/DevTools/binaries/adfs/adfs_auth_linux_1.3"
alias raws="ruby /vidyard/DevTools/scripts/rds/adfs_auth.rb --output=console --username=dreed"
alias icat="kitty +kitten icat"
#alias ssh="ssh $(host -t A $1 | cut -f1 -d' ')"
alias t="todo.sh"
alias lsd="ls -1t | head -5"
alias lps="lpass show"
alias lpc="grep password | sed 's/[^ ]* //' | xclip"
alias color='for x in {0..8}; do for i in {30..37}; do for a in {40..47}; do echo -ne "\e[$x;$i;$a""m\\\e[$x;$i;$a""m\e[0;37;40m "; done; echo; done; done; echo ""'
alias getip='drill +short myip.opendns.com @resolver1.opendns.com | grep -v -e "^;" | grep -v -e "^[[:space:]]*$" | awk "{print \$5}" '

# external configs
#source /usr/local/share/zsh/site-functions/_aws
source $ZSH/oh-my-zsh.sh
source ~/.zshvars
source ~/bin/tmuxinator.zsh
source ~/.zsh/colors.sh
source ~/.oh-my-zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

