# .bashrc
PATH=/usr/local/bin:$PATH; export PATH
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

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

### Add npm installed packages
export PATH="/usr/local/share/npm/bin:$PATH"

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

# WP-CLI directory
PATH=/Users/aaronjorbin/.wp-cli/bin:$PATH

export WP_CLI_PHP=/Applications/xampp/xamppfiles/bin/php

export NVM_DIR="/Users/aaronjorbin/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

unset SSL_CERT_FILE

if [ -f "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh" ]; then
  __GIT_PROMPT_DIR=$(brew --prefix)/opt/bash-git-prompt/share
	source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
	GIT_PROMPT_THEME=Solarized
fi
