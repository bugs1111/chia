source global.sh

tmux send-keys -t $SNAME:$WNAME.6 "./pb.sh 1 3" C-m
tmux send-keys -t $SNAME:$WNAME.7 "./pb.sh 2 3" C-m
tmux send-keys -t $SNAME:$WNAME.8 "./pb.sh 3 3" C-m
