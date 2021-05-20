source global.sh

tmux send-keys -t $SNAME:$WNAME.0 "./py.sh 1 1" C-m
tmux send-keys -t $SNAME:$WNAME.1 "./py.sh 2 1" C-m
tmux send-keys -t $SNAME:$WNAME.2 "./py.sh 3 1" C-m
