# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
autoload -Uz compinit
compinit
kitty + complete setup zsh | source /dev/stdin

# agrat theme specific config
# set WHEREAMI to your main host. SSH to any other host and the terminal will change colour to indicate
export WHEREAMI="agrat"

# Exports
export TODOTXT_DEFAULT_ACTION=ls
export GOPATH="/home/daphne/src/go"
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/home/daphne/bin:$PATH:/home/daphne/.gem/ruby/2.5.0/bin:$GOPATH/bin"
export ZSH_THEME="agrat"
export EDITOR=vim
export LC_ALL=en_CA.UTF-8
export DISABLE_LS_COLORS=true
export ZSH_AUTOSUGGEST_STRATEGY=(history completion)

# oh-my-zsh configs
plugins=(git aws docker colorize archlinux colored-man-pages)


setopt hist_ignore_all_dups
HISTSIZE=100000
SAVEHIST=100000


# aliases
alias gcal="gcalcli --calendar 'Daphne Reed'"
alias paws="/vidyard/DevTools/binaries/adfs/adfs_auth_linux_1.3"
alias raws="ruby /vidyard/DevTools/scripts/rds/adfs_auth.rb --output=console --username=dreed"
alias icat="kitty +kitten icat"
#alias ssh="kitty +kitten ssh"
alias lsd="ls -1t | head -5"
alias ls="/usr/bin/lsd"
alias lps="lpass show"
alias lpc="grep password | sed 's/[^ ]* //' | xclip"
alias color='for x in {0..8}; do for i in {30..37}; do for a in {40..47}; do echo -ne "\e[$x;$i;$a""m\\\e[$x;$i;$a""m\e[0;37;40m "; done; echo; done; done; echo ""'
alias getip='drill +short myip.opendns.com @resolver1.opendns.com | grep -v -e "^;" | grep -v -e "^[[:space:]]*$" | awk "{print \$5}" '

alias joker_build='docker run --rm -it --volume="$PWD:/srv/jekyll" --volume="$PWD/vendor/bundle:/usr/local/bundle" -p 4000:4000 jekyll/jekyll:latest jekyll build'
alias joker_serve='docker run --rm -it --volume="$PWD:/srv/jekyll" --volume="$PWD/vendor/bundle:/usr/local/bundle" -p 4000:4000 jekyll/jekyll:latest jekyll serve'




# external configs
source $ZSH/oh-my-zsh.sh
source ~/.zshvars
source ~/.zsh/colors.sh
source ~/.oh-my-zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh


PATH="/home/daphne/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/daphne/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/daphne/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/daphne/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/daphne/perl5"; export PERL_MM_OPT;
