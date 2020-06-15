case "$HOST" in
  adtac1.roam.corp.google.com|3.adtac.in)
    host_bg=15;  host_fg=119;;
  *)
    host_bg=119; host_fg=112;;
esac

PS1="%K{$host_bg}%B%F{$host_fg} @$HOST %f%b%k %B%F{1}"'$(pwd | sed "s:${HOME}:~:")'"%f%b %B%F{2}\$%f%b "
RPROMPT=""
