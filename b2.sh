source global.sh

tmux send-keys -t $SNAME:$WNAME.3 "./pb.sh 1 2" C-m
tmux send-keys -t $SNAME:$WNAME.4 "./pb.sh 2 2" C-m
tmux send-keys -t $SNAME:$WNAME.5 "./pb.sh 3 2" C-m
