#########################
##### Basic Aliases #####
#########################
alias ls='ls $LS_OPTIONS'
alias lsa='ls -a'
alias lsla='ls -la'
alias ll="ls -l"
alias lo="ls -o"
alias lh="ls -lh"
alias la="ls -la"
alias sl="ls"
alias l="ls"
alias s="ls"
#alias rm="rm -i"    # Make rming a slow and painful process
# Show most recent files at the bottom
alias ltr="ls -ltr"
alias j="j"
alias J="autojump"

# Why doesn't everyone have these?
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."
alias .......="cd ../../../../../.."

# Always use extended regex
alias grep="egrep"
alias cgrep="egrep --color=always"
# Grep with line numbers and colors
alias G="grep -n --color=always --binary-file=without-match --exclude=tags --exclude=*-min.js --exclude-dir='.[a-zA-Z]*' --exclude-dir='external' --exclude-dir='blib'"
# Add recursive & insensitive matching
alias GR="G -r"
alias GRI="G -r -i"
alias GIR="GRI"
alias IGR="GRI"
alias IRG="GRI"
# Ack is too hard to type
alias a="ack"
alias shead="sort|uniq -c|sort -rn|head"
alias t="tail -F"

# Find processes
alias paux="ps aux|grep -i"
# Get more math functions, no startup message
alias bc='bc -lq'
# See man pages from all sections
alias man="man -a"

# Is someone looking over your shoulder?
alias c="clear"
alias logout="clear; logout"

alias which='type -a'
alias h="history |grep"
# Info pages are crap. make them slightly less so.
alias info="info --vi-keys"
# Why doesn't BitchX load the rc by default?
alias BitchX="BitchX -b"
# Continue wget downloads if possible
alias wget="wget --no-check-certificate -c"
# Reset terminal escape code http://forums.gentoo.org/viewtopic-t-444558-start-0.html
alias nethack='echo -e "\033c"; nethack'
alias bcvissh="bcvi --wrap-ssh --"
alias screen='TERM=screen screen'
alias jobs="jobs -l"
alias bwm-ng="bwm-ng -u bytes -T avg -i getifaddrs"
alias svndiffvim='svn diff --diff-cmd ~/bin/svnvimdiff'
alias nslookup="nslookup -sil"
alias wgetdir="wget -r -nH --no-parent"
alias wgetmirror="wget --mirror -U Firefox/1.5 -p --html-extension --convert-links"
# Print 2 columns, big header, landscape mode, code highlighting, color,
# and use arrows to mark wrapped lines
alias enscript='enscript -2Gr -E --color -C --mark-wrapped-lines=arrow'
alias perldoc='PAGER="" perldoc'
alias pd='perldoc'
alias sharethisdir="echo 'now sharing cur directory at port 9000'; python -m SimpleHTTPServer 9000"

# Hide a bunch of crap in dig
alias dig='dig +nocomments +noquestion +nocmd +nostats'

alias gti='git'
# A short git log
alias gitl='git l -n3'
alias gits='git st'
alias gitr='git r'
alias gitf='git f'
alias gitb='git branch'
alias gsrebase='git-svn-rebase'
alias yoink='git stash && git pull && git stash pop'

alias routes='netstat -nr -f inet'
# vim should assume -p
alias vim='vim -p'

# todo.txt should be t
alias t='~/.jorbin/todo.txt-cli/todo.sh'

alias phpsyntax='for f in $(find . -name "*.php"); do php -l $f; done'

alias sniff="sudo ngrep -W byline -d 'en0' -t '^(GET|POST) ' 'tcp and port 80'"

alias subtree="~/sandbox/git/contrib/subtree/git-subtree.sh"

alias bigpy="python ~/sandbox/bigsetup/bigpy/big.py"

alias weather="~/.jorbin/others/ansiweather/ansiweather"
alias domainless="sed 's/http:\/\/[^\/]*//'"
