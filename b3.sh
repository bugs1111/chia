source global.sh

tmux send-keys -t $SNAME:$WNAME.6 "./py.sh 1 3" C-m
tmux send-keys -t $SNAME:$WNAME.7 "./py.sh 2 3" C-m
tmux send-keys -t $SNAME:$WNAME.8 "./py.sh 3 3" C-m
