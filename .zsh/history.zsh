HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000
setopt HIST_VERIFY
setopt HIST_REDUCE_BLANKS

# Share history between sessions
setopt SHARE_HISTORY

# Add timestamps to history
setopt EXTENDED_HISTORY

# Adds history
setopt APPEND_HISTORY

# Adds history incrementally and share it across sessions
setopt INC_APPEND_HISTORY SHARE_HISTORY

# Don't record dupes in history
setopt HIST_IGNORE_ALL_DUPS
