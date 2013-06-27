parse_git_dirty() {
  if [[ -n $(git status -s --ignore-submodules=dirty 2> /dev/null) ]]; then
    echo "%{$fg[red]%}"
  else
    echo "%{$fg[green]%}"
  fi
}

function git_prompt_info() {
  # Ignore directorys that aren't in git
  if ! git ls-files >& /dev/null; then
    return;
  fi;

  # Ignore the home directory
  if [ $(git rev-parse --quiet --show-toplevel) '==' $HOME ]; then
    return;
  fi;

  # Get the branch name and color
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo " $(parse_git_dirty)${ref#refs/heads/}%{$reset_color%}"
}

PROMPT='%{$fg[blue]%}%c%{$reset_color%}$ '
RPROMPT='$(git_prompt_info)'
