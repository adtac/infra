zmodload zsh/terminfo

# So that Ctrl+S can be used as forward in reverse search
stty -ixon

# keep the original contents when I Ctrl+C in a TAB autocomplete cycle
keep-original-command() {
    print -n '...'
    zle expand-or-complete
    zle redisplay
}
zle -N keep-original-command

bindkey -v
bindkey '^[[A' history-substring-search-up         # history substring search UP
bindkey '^[[B' history-substring-search-down       # history substring search DOWN
bindkey "^[[1;5C" forward-word                     # move a word right
bindkey "^[[1;5D" backward-word                    # move a word left
bindkey "^[[H" beginning-of-line                   # HOME moves cursor to the beginning
bindkey "^[[F" end-of-line                         # END moves cursor to, well, the end
bindkey "^[[3~" delete-char                        # BACKSPACE deletes a character to the left
bindkey "^H" backward-delete-char                  # DELETE deletes the character under cursor
bindkey " " magic-space                            # pressing SPACE after !command fills it
bindkey "^[[Z" reverse-menu-complete               # SHIFT+TAB cycles in the opposite direction
bindkey "^R" history-incremental-search-backward   # reverse search
bindkey "^?" backward-delete-char                  # backspace in insert mode after normal mode
bindkey "jk" vi-cmd-mode                           # go to vi mode with jk
