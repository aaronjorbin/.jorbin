# .bashrc
PATH=/usr/local/bin/:$PATH; export PATH
source /etc/profile
source ~/.jorbin/bash_global
source ~/.jorbin/bash_aliases
source ~/.jorbin/bash_functions
source ~/.jorbin/todo.txt-cli/todo_completion
source ~/.jorbin/others/bash-it/completion/available/git.completion.bash
source ~/.jorbin/others/bash-it/completion/available/ssh.completion.bash

if [ -f ~/.bash_local ]
    then
    source ~/.bash_local
fi

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm
