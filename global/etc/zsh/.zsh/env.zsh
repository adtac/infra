export XKB_DEFAULT_LAYOUT=us(altgr-intl)
export XKB_DEFAULT_OPTIONS=caps:escape,lv3:ralt_switch
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
export XDG_SESSION_TYPE=wayland    # use wayland
export TERM=screen-256color        # screen
export LANG=en_US.UTF-8            # langauge and locale
export EDITOR=vim                  # muh editor
export PAGER=less                  # less is system pager
export HISTFILE="$HOME/.zhistory"  # history file
export HISTSIZE=640000             # 640k ought to be enough for anybody
export SAVEHIST=640000             # really, 640k ought to be enough for anybody
export GREP_COLORS="mt=37;45"      # grep colors
export LESS_TERMCAP_mb=$'\E[1;31m' # begins blinking
export LESS_TERMCAP_md=$'\E[1;31m' # begins bold
export LESS_TERMCAP_me=$'\E[0m'    # ends mode
export LESS_TERMCAP_se=$'\E[0m'    # ends standout-mode
export LESS_TERMCAP_so=$'\E[7m'    # begins standout-mode
export LESS_TERMCAP_ue=$'\E[0m'    # ends underline
export LESS_TERMCAP_us=$'\E[1;32m' # begins underline
setopt PROMPT_SUBST                # remember and allow prompt substitutions
setopt CLOBBER                     # allow redirection to existing files
setopt AUTO_CD                     # try to `cd` if command does not exist
setopt AUTO_PUSHD                  # `cd` pushes directory onto the stack
setopt PUSHD_IGNORE_DUPS           # don't push the same directory twice
setopt PUSHD_SILENT                # make pushd-ing and popd-ing silent
setopt EXTENDED_GLOB               # treat '~', '#', '^' as part of patterns
setopt LONG_LIST_JOBS              # list jobs with the long format
setopt NOTIFY                      # print bg jobs' status immediately
setopt HUP                         # you don't want bg jobs to keep running when you exit
setopt EXTENDED_HISTORY            # store epoch and runtime in the history file
setopt INC_APPEND_HISTORY          # append to history incrementally and immediately
setopt SHARE_HISTORY               # share history across sessions
setopt HIST_IGNORE_DUPS            # write only one unique instance of a command in history
setopt HIST_IGNORE_ALL_DUPS        # ignore all duplicates
setopt HIST_VERIFY                 # pasting a line from history should execute the command
setopt ALWAYS_TO_END               # completions move cursor to the end
setopt AUTO_MENU                   # automatically use menu after second request for completion
setopt AUTO_LIST                   # automatically list choices when ambigous
setopt PATH_DIRS                   # perform path search
setopt BANG_HIST                   # Treat the '!' character specially during expansion.
setopt EXTENDED_HISTORY            # Write the history file in the ":start:elapsed;command" format.
setopt INC_APPEND_HISTORY          # Write to the history file immediately, not when the shell exits.
setopt SHARE_HISTORY               # Share history between all sessions.
setopt HIST_EXPIRE_DUPS_FIRST      # Expire duplicate entries first when trimming history.
setopt HIST_IGNORE_DUPS            # Don't record an entry that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS        # Delete old recorded entry if new entry is a duplicate.
setopt HIST_FIND_NO_DUPS           # Do not display a line previously found.
setopt HIST_IGNORE_SPACE           # Don't record an entry starting with a space.
setopt HIST_SAVE_NO_DUPS           # Don't write duplicate entries in the history file.
setopt HIST_REDUCE_BLANKS          # Remove superfluous blanks before recording entry.
setopt HIST_VERIFY                 # Don't execute immediately upon history expansion.
setopt HIST_BEEP                   # Beep when accessing nonexistent history.
unsetopt CASE_GLOB                 # make globbing case-sensitive
unsetopt MENU_COMPLETE             # autocomplete the menu
unsetopt BG_NICE                   # do not lower priority for bg jobs
