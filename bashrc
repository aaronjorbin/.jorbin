# .bashrc
source /etc/profile
source ~/.jorbin/bash_global
source ~/.jorbin/bash_aliases
source ~/.jorbin/bash_functions
if [ -f ~/.bash_local ]
    then
    source ~/.bash_local
fi
