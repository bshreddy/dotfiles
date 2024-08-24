# Custom Prompt - Shows active branch in git repo
function parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
setopt PROMPT_SUBST
export PROMPT='%n@%m %1~%F{green}$(parse_git_branch)%f %# '

autoload -Uz compinit && compinit
export GPG_TTY=$(tty)