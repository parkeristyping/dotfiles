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

# Add rbenv shims to path
echo 'export PATH="$HOME/.rbenv/bin:$PATH"'

# Add anaconda3 to path
export PATH=/anaconda3/bin:$PATH

# Add astronomer to path
export PATH="$PATH:$HOME/.astro/"

# Initialize nvm for Node version management
# source $(brew --prefix nvm)/nvm.sh

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

# Make forking work
# https://blog.phusion.nl/2017/10/13/why-ruby-app-servers-break-on-macos-high-sierra-and-what-can-be-done-about-it/
export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES

export PGSSLMODE=require

# ssh agent
# eval "$(ssh-agent -s)"
# ssh-add ~/.ssh/id_rsa
eval `keychain --eval --agents ssh --inherit any id_rsa`
