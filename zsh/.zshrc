# Custom Prompt - Shows active branch in git repo
function parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
setopt PROMPT_SUBST
export PROMPT='%n@%m %1~%F{green}$(parse_git_branch)%f %# '

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
# __conda_setup="$('/Users/bshreddy/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
# if [ $? -eq 0 ]; then
#     eval "$__conda_setup"
# else
#     if [ -f "/Users/bshreddy/miniconda3/etc/profile.d/conda.sh" ]; then
#         . "/Users/bshreddy/miniconda3/etc/profile.d/conda.sh"
#     else
#         export PATH="/Users/bshreddy/miniconda3/bin:$PATH"
#     fi
# fi
# unset __conda_setup
# <<< conda initialize <<<
# The following lines have been added by Docker Desktop to enable Docker CLI completions.
fpath=(/Users/bshreddy/.docker/completions $fpath)
autoload -Uz compinit
compinit
# End of Docker CLI completions
