source global.sh

# echo $JOB_ITERV

tmux send-keys -t $SNAME:$WNAME.0 "./p.sh Z 1 1" C-m
sleep $MIN_ITERV
tmux send-keys -t $SNAME:$WNAME.1 "./p.sh Z 2 1" C-m
sleep $MIN_ITERV
tmux send-keys -t $SNAME:$WNAME.2 "./p.sh Z 3 1" C-m

sleep $JOB_ITERV

tmux send-keys -t $SNAME:$WNAME.3 "./p.sh Z 1 2" C-m
sleep $MIN_ITERV
tmux send-keys -t $SNAME:$WNAME.4 "./p.sh Z 2 2" C-m
sleep $MIN_ITERV
tmux send-keys -t $SNAME:$WNAME.5 "./p.sh Z 3 2" C-m


sleep $JOB_ITERV

tmux send-keys -t $SNAME:$WNAME.6 "./p.sh Z 1 3" C-m
sleep $MIN_ITERV
tmux send-keys -t $SNAME:$WNAME.7 "./p.sh Z 2 3" C-m
sleep $MIN_ITERV
tmux send-keys -t $SNAME:$WNAME.8 "./p.sh Z 3 3" C-m
