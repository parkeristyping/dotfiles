# Dotfile config via https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# Get to top of your git directory
alias cdu='cd $(git rev-parse --show-toplevel)'

# Initialize jenv for Java version management
eval "$(jenv init -)"

# Initialize rbenv for Ruby version management
eval "$(rbenv init -)"
