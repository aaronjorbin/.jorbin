#serach php and phtml files
phpgrep() { # search php files
    ack --smart-case --type=php $1
}
rbgrep() { # search php files
    ack --smart-case --type=ruby $1
}
ubergrep() { #search all files
    ack --smart-case $1
}
jsgrep() { #search js files
    ack --smart-case --type=js $1
}
cssgrep() { #search css files
    ack --smart-case --type=css $1
}
sassgrep() { # search development css files
find . \( -name "*.scss" -print \)  | xargs grep -n "$1"
}
jssgrep() { # search development css files
find . \( -name "*.js" -print \)  | xargs grep -n "$1"
}
hgrep(){
history | grep "$1"
}
# I often want awk '{print <var>}'
function fawk {
    first="awk '{print "
    last="}'"
    cmd="${first}\$${1}${last}"
    eval $cmd
}

# Print a histogram, with setable unit size
function histogram {
    UNIT=$1
    if [ -z "$UNIT" ]; then
        UNIT="1";
    fi

    first="sort|uniq -c|awk '{printf(\"\n%s \", \$0); for (i =0; i<\$1; i=i+"
    last=") {printf(\"#\")};}'; echo \"\""
    cmd="${first}${UNIT}${last}"
    eval $cmd
}

function calc {
    awk "BEGIN{ print $* }";
}

function getip {
    host $1|grep " has address "|cut -d" " -f4
}

sniff="sudo ngrep -W byline -d 'en0' -t '^(GET|POST) ' 'tcp'"

difff() {
    svn diff > ~/diff.diff
    vim ~/diff.diff
}


## Make applying a patch that is on Trac easier.  Props Nacin

# Apply a Trac patch.
trac_patch() {
    curl "$1?format=raw" | patch -p0
}
# Apply a Trac patch on a clean repo.
clean_patch() {
    svn cleanup
    svn revert -R *
    svn up
    curl "$1?format=raw" | patch -p0
}
_autojump() 
{
        local cur
        cur=${COMP_WORDS[*]:1}
        comps=$(autojump --bash --completion $cur)
        while read i
        do
            COMPREPLY=("${COMPREPLY[@]}" "${i}")
        done <<EOF
        $comps
EOF
}
complete -F _autojump j

if [ -n "$XDG_DATA_HOME" ]
then
    export AUTOJUMP_DATA_DIR="$XDG_DATA_HOME/autojump"
else
    export AUTOJUMP_DATA_DIR=~/.local/share/autojump
fi

if [ ! -e "${AUTOJUMP_DATA_DIR}" ]
then
    mkdir -p "${AUTOJUMP_DATA_DIR}"
    mv ~/.autojump_py "${AUTOJUMP_DATA_DIR}/autojump_py" 2>>/dev/null #migration
    mv ~/.autojump_py.bak "${AUTOJUMP_DATA_DIR}/autojump_py.bak" 2>>/dev/null
    mv ~/.autojump_errors "${AUTOJUMP_DATA_DIR}/autojump_errors" 2>>/dev/null
fi

export AUTOJUMP_HOME=${HOME}
AUTOJUMP='{ [[ "$AUTOJUMP_HOME" == "$HOME" ]] && (autojump -a "$(pwd -P)"&)>/dev/null 2>>${AUTOJUMP_DATA_DIR}/.autojump_errors;} 2>/dev/null'
if [[ ! $PROMPT_COMMAND =~ autojump ]]; then
  export PROMPT_COMMAND="$AUTOJUMP ; ${PROMPT_COMMAND:-:}"
fi 
alias jumpstat="autojump --stat"
function j { new_path="$(autojump $@)";if [ -n "$new_path" ]; then echo -e "\\033[31m${new_path}\\033[0m"; cd "$new_path";else false; fi }

# irssi notify from harpua
irc_notify() {
 ssh harpua "tail -f .irssi/fnotify  " | while read heading message; do growlnotify  -t "${heading}" -m "${message}"; done
}

# animated gifs from any video
# from alex sexton   gist.github.com/SlexAxton/4989674
gifify() {
  if [[ -n "$1" ]]; then
    if [[ $2 == '--good' ]]; then
      ffmpeg -i $1 -r 10 -vcodec png out-static-%05d.png
      time convert -verbose +dither -layers Optimize -resize 600x600\> out-static*.png  GIF:- | gifsicle --colors 128 --delay=5 --loop --optimize=3 --multifile - > $1.gif
      rm out-static*.png
    else
      ffmpeg -i $1 -s 600x400 -pix_fmt rgb24 -r 10 -f gif - | gifsicle --optimize=3 --delay=3 > $1.gif
    fi
  else
    echo "proper usage: gifify <input_movie.mov>. You DO need to include extension."
  fi
}
