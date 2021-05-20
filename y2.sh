source global.sh

tmux send-keys -t $SNAME:$WNAME.3 "./py.sh 1 2" C-m
tmux send-keys -t $SNAME:$WNAME.4 "./py.sh 2 2" C-m
tmux send-keys -t $SNAME:$WNAME.5 "./py.sh 3 2" C-m
