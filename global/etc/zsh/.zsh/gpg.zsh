if [[ ! -f /tmp/gpg-agent-connected ]]; then
  echo UPDATESTARTUPTTY | gpg-connect-agent
  touch /tmp/gpg-agent-connected
fi
