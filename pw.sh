source global.sh

# echo $JOB_ITERV

tmux send-keys -t $SNAME:$WNAME.0 "./p2.sh W 1 1" C-m
sleep $MIN_ITERV
tmux send-keys -t $SNAME:$WNAME.1 "./p2.sh W 2 1" C-m
sleep $MIN_ITERV
tmux send-keys -t $SNAME:$WNAME.2 "./p2.sh W 3 1" C-m

sleep $JOB_ITERV

tmux send-keys -t $SNAME:$WNAME.3 "./p2.sh W 1 2" C-m
sleep $MIN_ITERV
tmux send-keys -t $SNAME:$WNAME.4 "./p2.sh W 2 2" C-m
sleep $MIN_ITERV
tmux send-keys -t $SNAME:$WNAME.5 "./p2.sh W 3 2" C-m


sleep $JOB_ITERV

tmux send-keys -t $SNAME:$WNAME.6 "./p2.sh W 1 3" C-m
sleep $MIN_ITERV
tmux send-keys -t $SNAME:$WNAME.7 "./p2.sh W 2 3" C-m
sleep $MIN_ITERV
tmux send-keys -t $SNAME:$WNAME.8 "./p2.sh W 3 3" C-m
