# .bashrc
PATH=/usr/local/bin/:$PATH; export PATH
source /etc/profile
source ~/.jorbin/bash_global
source ~/.jorbin/bash_aliases
source ~/.jorbin/bash_functions
source ~/.jorbin/todo.txt-cli/todo_completion
if [ -f ~/.bash_local ]
    then
    source ~/.bash_local
fi
