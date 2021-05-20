source global.sh

tmux send-keys -t $SNAME:$WNAME.0 "./pb.sh 1 1" C-m
tmux send-keys -t $SNAME:$WNAME.1 "./pb.sh 2 1" C-m
tmux send-keys -t $SNAME:$WNAME.2 "./pb.sh 3 1" C-m
