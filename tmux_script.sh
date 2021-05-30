#!/bin/bash
# Build based on https://gist.github.com/febrianrendak/9578240

function tmux_web {
 SESSION_NAME=$1
 tmux new -s $SESSION_NAME -n editor -d
 tmux attach -t $SESSION_NAME
}

#new session base name is current directory name
DIR_NAME=${PWD##*/}

echo "Trying to create new Tmux session with name '$DIR_NAME'."
tmux has-session -t $DIR_NAME 2>/dev/null
if [ $? -eq 1 ]
then
  echo "Session not found. Create Session '$DIR_NAME'."
  tmux_web $DIR_NAME
else
  echo "Session found. Attach to it"
  tmux attach -t $DIR_NAME
fi

echo "Start tmux session $DIR_NAME."
