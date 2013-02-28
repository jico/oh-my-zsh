function ssh_connection() {
  if [[ -n $SSH_CONNECTION ]]; then
    echo "%{$fg_bold[cyan]%}%n%{$fg_bold[blue]%}@%m %{$reset_color%}"
  else
    echo ""
  fi
}

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[blue]%}git%{$fg[gray]%}:%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=""
ZSH_THEME_GIT_PROMPT_CLEAN=""

ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[green]%}✚ "
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[blue]%}✹ "
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%}✖ "
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[magenta]%}➜ "
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[yellow]%}═ "
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[cyan]%}✭ "

local user='%{$fg_bold[blue]%}$(ssh_connection)%{$reset_color%}'
local pwd='%{$fg_bold[magenta]%}%c%{$reset_color%}'
local rvm='%{$fg[yellow]%}$(rvm-prompt i v g)%{$reset_color%}'
local git='$(git_prompt_status) $(git_prompt_info)%{$reset_color%}'
local mark='%{$fg_bold[yellow]%}⚡%{$reset_color%}'

PROMPT="${user}${pwd} ${mark} "
RPROMPT="${git} ${rvm}"
