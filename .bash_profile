# local config
if [ -f ~/.bash_local_profile ]; then
  source ~/.bash_local_profile
fi

# git prompt
# expected to be installed with homebrew
if [ -f "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh" ]; then
  __GIT_PROMPT_DIR=$(brew --prefix)/opt/bash-git-prompt/share
  source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
fi

# bash completion
# expected to he installed using home brew
if [ -f $(brew --prefix)/etc/bash_completion ]; then
. $(brew --prefix)/etc/bash_completion
fi

# git completion
# from https://github.com/git/git/blob/master/contrib/completion/git-completion.bash
source ~/.git_completion.bash
GIT_PS1_SHOWDIRTYSTATE=true
export PS1='[\u@mbp \w$(__git_ps1)]\$ '

# docker machine 
eval "$(docker-machine env default)" > /dev/null

# aliases
alias de='eval "$(docker-machine env default)"'
alias gs="git status"
alias gco="git checkout"
alias gpo="git push origin"
alias sbp="source ~/.bash_profile"
