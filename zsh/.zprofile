# Locale Settings
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Add colors to GREP
export GREP_OPTIONS="--color=always"
export GREP_COLOR="1;1;31"

# Change rm to mv to .trash
alias rm="trash"

# Standard Aliases
alias l="ls"
alias la="ls -la"
alias lA="ls -lA"
alias vi="nvim"

alias date_ff="date +%Y-%m-%dT%H:%M:%S%z"

# Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# Gatech Alias
alias start_cs6210="aws ec2 start-instances --instance-ids 'i-0ec59de513afaa376'"

# Language Specific - Java
# export JAVA_HOME=/Library/Java/JavaVirtualMachines/amazon-corretto-17.jdk/Contents/Home

# Language Specific - NodeJS
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Export PATH
export PATH

# Added by swiftly
. "/Users/bshreddy/.swiftly/env.sh"

# Configure ZSH Autocomplete
autoload -U compinit; compinit
