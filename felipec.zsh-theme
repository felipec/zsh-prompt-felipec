# config for __git_ps1
: ${GIT_PS1_SHOWCOLORHINTS=1}
: ${GIT_PS1_SHOWDIRTYSTATE=1}
: ${GIT_PS1_SHOWUPSTREAM=auto}

# config for git_prompt
ZSH_THEME_GIT_PROMPT_PREFIX=' %F{green} '
ZSH_THEME_GIT_PROMPT_SUFFIX='%f'
ZSH_THEME_GIT_PROMPT_DIRTY='%F{red}*%f'
ZSH_THEME_GIT_PROMPT_AHEAD='>'
ZSH_THEME_GIT_PROMPT_BEHIND='<'
ZSH_THEME_GIT_PROMPT_DIVERGED='<>'

# Simulate __git_ps1
# NOTE: you need to force async-prompt
(( $+functions[__git_ps1] )) || __git_ps1 () {
  echo "$(git_prompt_info)$(git_prompt_status)"
}

PS1='%(!.%F{magenta}❯%f.)%F{%(?.green.red)}❯%f '
RPS1='%F{blue}%B%~%b%f$(__git_ps1 " %%F{green}%%f %s")'
PS2='%F{cyan}\%f '
