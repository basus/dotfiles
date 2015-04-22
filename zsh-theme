# A custom Zsh theme combining elements from blinks and gnzh

ZSH_THEME_GIT_PROMPT_PREFIX=" on %{$fg_bold[blue]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{%f%k%b%B%F{green}%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{%F{red}%}*%{%f%k%b%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_COMMITS_AHEAD_PREFIX="%{$fg_bold[red]%}+"
ZSH_THEME_GIT_COMMITS_AHEAD_SUFFIX="%{$reset_color%}"

PROMPT='
╭──%{$fg[yellow]%}%n%{$fg_bold[white]%} at %{$fg[magenta]%}%m%{$fg_bold[white]%} in %{$fg[green]%}%~%{$fg_bold[white]%}$(git_prompt_info) $(git_commits_ahead)
╰─➤%{$fg_bold[white]%}'
