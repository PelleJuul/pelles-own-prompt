
local pathstr=$(print -P '%2~')
local ret_color="%(?:%{$fg[green]%}:%{$fg[red]%})"
local promptSymbol='>'

precmd () {
    pathstr=$(print -P '%2~')
}

PROMPT='${ret_color}--$reset_color ${pathstr}%{$reset_color%}$(git_prompt_info) ${ret_color}${promptSymbol}$reset_color '

ZSH_THEME_GIT_PROMPT_PREFIX=" (%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=")"
ZSH_THEME_GIT_PROMPT_CLEAN=")"
