alias vi="vim"

alias mutt="neomutt -F ~/.config/mutt/config"

alias a="aerc"
alias f="newsboat"
alias m="mutt"
alias n="ncmpcpp"
alias r="ranger"
alias v="vim"
alias w="MOSH_ESCAPE_KEY='~' mosh 2.adtac.in -- tmux attach -t weechat"
alias z="zathura"

alias ar="ssh black -t tmux attach -t autored"

alias s="ls"
alias l="ls -al"
alias la="ls -al"
alias ls='ls --group-directories-first --color=auto'

function ledger_file() {
  case $1 in
    "") echo "$HOME/docs/finances/personal.ledger" ;;
    a)  echo "$HOME/docs/finances/personal.ledger" ;;
    c)  echo "$HOME/docs/finances/commento.ledger" ;;
  esac
}

function b() {
  ledger --strict -f "$(ledger_file $1)" balance ${@:2}
}

function nw() {
  ledger --strict -f "$(ledger_file $1)" balance \
    "^Assets" and not "^Assets:Safe" and not "^Assets:Wallet" or "^Liabilities" ${@:2}
}

function mexp() {
  ledger --strict -f "$(ledger_file $1)" register -M --period-sort "(amount)" \
    "^Expenses" and not "^Expenses:Tax" ${@:2}
}

function minc() {
  ledger --strict -f "$(ledger_file $1)" register -M --period-sort "(amount)" \
    "^Income" and not "^Income:Misc" ${@:2}
}

alias grep='grep --color=auto'

alias pbcopy='xsel --clipboard --input'
alias pbpaste='xsel --clipboard --output'

# git stuff
alias g="git show"
alias gh="git show HEAD"
alias gs="git status"
alias gl="git log"
alias gca="git commit --amend"
alias gpr="git pull --rebase origin master"
alias gpf="git push --force"
alias gco="git checkout"
alias gd="git diff"
alias gbl="git branch -v"
alias gbd="git branch -D"
alias gri="git rebase --interactive"
alias grc="git rebase --continue"
alias gra="git rebase --abort"
alias gst="git stash"
alias gsta="git stash apply"
alias gx="gco -- \*; git reset HEAD \*"
alias gcp="git cherry-pick"
alias gcpc="git cherry-pick --continue"
alias gcpa="git cherry-pick --abort"
alias gpar="git remote | xargs -L1 git push --all"

alias t="task"
alias tl="task all status:pending or status:waiting"
alias tc="task calendar"
alias ta="task add"
alias te="task edit"
alias tm="task modify"
alias tu="task undo"
alias ts="task start"
tf() { task done "$@" }
alias tx="task delete"
alias tt="yes | task stop"
tp() { task "(status:pending or status:waiting) and project:$1" }
alias tn="task $1 annotate"

alias dl="axel -n 8 -a"

alias gp="grep \"^\$(cut -d ' ' -f 1 ~/tmp/g | shuf -n 1) \" ~/tmp/g"

alias dcf="ssh -t cs2810-1@10.6.15.181 '~/.local/share/junest/bin/junest -f -- zsh'"

alias db="ssh db.commento.io -p 2222 -t 'sudo -u postgres PAGER=\"less -SF\" psql commento'"
alias prod="./build && scp -P 2222 -r prod/* static.commento.io:~/www/commento.io"

open() {
    xdg-open $1 2>/dev/null 1>/dev/null &
}

f320() {
  res="$(echo "$1" | cut -d '-' -f -2 | xargs) - MP3 320"
  echo "$res"
  flac2mp3.pl --preset=320 --processes=8 "$1" "$res"
  mkt "$res"
}

fv0() {
  res="$(echo "$1" | cut -d '-' -f -2 | xargs) - MP3 V0"
  echo "$res"
  flac2mp3.pl --preset=V0 --processes=8 "$1" "$res"
  mkt "$res"
}
