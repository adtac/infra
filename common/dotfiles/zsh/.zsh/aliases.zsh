alias vim="nvim"
alias vi="nvim"

alias n="ncmpcpp"
alias r="ranger"
alias v="nvim"
alias w='ssh ssh.adtac.in -t tmux attach -t weechat'

alias s="ls"
alias l="ls -al"
alias la="ls -al"
alias ls='ls --group-directories-first --color=auto'

function ledger_file() {
  case $1 in
    "") echo "$HOME/docs/adhityaa/11-finances/adhityaa.ledger" ;;
    a)  echo "$HOME/docs/adhityaa/11-finances/adhityaa.ledger" ;;
    c)  echo "$HOME/docs/commento/accounts/commento.ledger"    ;;
  esac
}

function le()   { v "$(ledger_file $1)" }                                                           # ledger edit
function b()    { ledger -f "$(ledger_file $1)" balance }                                           # balance
function nw()   { ledger -f "$(ledger_file $1)" balance "^Assets" "^Liabilities" }                  # net worth
function mexp() { ledger -f "$(ledger_file $1)" register -M --period-sort "(amount)" "^Expenses" }  # monthly expenditure
function minc() { ledger -f "$(ledger_file $1)" register -M --period-sort "(amount)" "^Income" }    # monthly income

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

alias t="task"
alias tl="task all status:pending or status:waiting"
alias tc="task calendar"
alias ta="task add"
alias tm="task modify"
alias tu="task undo"
alias ts="task start"
td() {
  yes | task done "$@"
}
alias tx="task delete"
alias tt="yes | task stop"
tp() {
    task "(status:pending or status:waiting) and project:$1"
}

alias dl="axel -n 8 -a"

alias gp="grep \"^\$(cut -d ' ' -f 1 ~/tmp/g | shuf -n 1) \" ~/tmp/g"

open() {
    xdg-open $1 2>/dev/null 1>/dev/null &
}
