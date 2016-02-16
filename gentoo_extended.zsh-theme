function prompt_char {
	if [ $UID -eq 0 ]; then echo "#"; else echo $; fi
}

PROMPT='%(!.%{$fg_bold[red]%}.%{$fg_bold[green]%}%n@)%m %{$fg_bold[blue]%}%(!.%1~.%~) $(virtualenv_prompt_info)$(git_prompt_info)$(hg_prompt_info)$(svn_prompt_info)%_$(prompt_char)%{$reset_color%} '


ZSH_THEME_GIT_PROMPT_PREFIX="git:("
ZSH_THEME_HG_PROMPT_PREFIX="hg:("
ZSH_THEME_SVN_PROMPT_PREFIX="svn:("

ZSH_THEME_GIT_PROMPT_SUFFIX=") "
ZSH_THEME_HG_PROMPT_SUFFIX=$ZSH_THEME_GIT_PROMPT_SUFFIX
ZSH_THEME_SVN_PROMPT_SUFFIX=$ZSH_THEME_GIT_PROMPT_SUFFIX

ZSH_THEME_VIRTUALENV_PREFIX="venv:["
ZSH_THEME_VIRTUALENV_SUFFIX="] "

