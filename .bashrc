# Set PATH
PATH=$PATH:~/bin

# Dotfile config via https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# Get to top of your git directory
alias cdu='cd $(git rev-parse --show-toplevel)'

# Initialize jenv for Java version management
eval "$(jenv init -)"

# Initialize rbenv for Ruby version management
eval "$(rbenv init -)"

# Initialize nvm for Node version management
source $(brew --prefix nvm)/nvm.sh

# Prompt
export PS1="\W\\$ \[$(tput sgr0)\]"

# Load secrets
if [ -f $HOME/.secrets ]; then
    source $HOME/.secrets
fi

export EDITOR='vim'

# tmuxinator
alias tmx='tmuxinator'

# for when psql craps out, usually after forced power down
alias fix-pg='rm /usr/local/var/postgres/postmaster.pid && brew services restart postgresql'
