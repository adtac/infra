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
    "") echo "$HOME/docs/adhityaa/finances/ledger" ;;
    a)  echo "$HOME/docs/adhityaa/finances/ledger" ;;
    c)  echo "$HOME/docs/commento/finances/ledger" ;;
  esac
}

function b() {
  ledger --strict -f "$(ledger_file $1)" balance ${@:2}
}

function nw() {
  ledger --strict -f "$(ledger_file $1)" balance \
    "^Assets" and not "^Assets:Safe" and not "^Assets:Wallet" or "^Liabilities" ${@:2}
}

function mreg() {
  ledger --strict -f "$(ledger_file $1)" register --period-sort "(amount)" ${@:2}
}

function mexp() {
  ledger --strict -f "$(ledger_file $1)" register -M --period-sort "(amount)" \
    "^Expenses" and not "^Expenses:Tax" ${@:2}
}

function mexpt() {
  ledger --strict -f "$(ledger_file $1)" register -M --period-sort "(amount)" \
    "^Expenses" ${@:2}
}

function minc() {
  ledger --strict -f "$(ledger_file $1)" register -M --period-sort "(amount)" \
    "^Income" and not "^Income:Misc" ${@:2}
}

function le() {
  $EDITOR "$(ledger_file $1)"
}

alias grep='grep --color=auto'

alias pbcopy='xsel --clipboard --input'
alias pbpaste='xsel --clipboard --output'

# git stuff
alias g="git show"
alias gh="git show HEAD"
alias gs="git status"
alias gl="git log"
alias ga="git add"
alias gaa="git add -A"
alias gca="git commit --amend"
alias gcm="git commit -m"
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

t() {
  $EDITOR $HOME/docs/adhityaa/log
}

alias dl="axel -n 8 -a"

open() {
    xdg-open $1 2>/dev/null 1>/dev/null &
}

alias rc="rclone --config ~/.config/rclone/secrets -P --no-traverse"
