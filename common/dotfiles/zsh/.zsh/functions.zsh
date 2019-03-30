# ix.io is a paste sharing service
# usage: <command> | ix
function ix() {
    local opts
    local OPTIND
    [ -f "$HOME/.netrc" ] && opts='-n'
    while getopts ":hd:i:n:" x; do
        case $x in
            h) echo "ix [-d ID] [-i ID] [-n N] [opts]"; return;;
            d) $echo curl $opts -X DELETE ix.io/$OPTARG; return;;
            i) opts="$opts -X PUT"; local id="$OPTARG";;
            n) opts="$opts -F read:1=$OPTARG";;
        esac
    done
    shift $(($OPTIND - 1))
    [ -t 0 ] && {
        local filename="$1"
        shift
        [ "$filename" ] && {
            curl $opts -F f:1=@"$filename" $* ix.io/$id
            return
        }
        echo "^C to cancel, ^D to send."
    }
    curl $opts -F f:1='<-' $* ix.io/$id
}

function take() {
    mkdir "$1"
    cd "$1"
}

# python venv
function pv() {
  if [[ "$1" == "" ]]; then
    source "$HOME/venv/general/bin/activate"
  else
    if [[ ! -d "$HOME/venv/$1" ]]; then
      (cd "$HOME/venv"; virtualenv "$1")
    fi
    source "$HOME/venv/$1/bin/activate"
  fi
}
