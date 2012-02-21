parse_git_dirty() {
  if [[ -n $(git status -s --ignore-submodules=dirty 2> /dev/null) ]]; then
    echo "%{$fg[red]%}"
  else
    echo "%{$fg[green]%}"
  fi
}

function git_prompt_info() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo " $(parse_git_dirty)${ref#refs/heads/}%{$reset_color%}"
}

PROMPT='%{$fg[blue]%}%c%{$reset_color%}$ '
RPROMPT='$(git_prompt_info)'
