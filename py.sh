source global.sh

# echo $JOB_ITERV

tmux send-keys -t $SNAME:$WNAME.0 "./p.sh y 1 1" C-m
sleep $MIN_ITERV
tmux send-keys -t $SNAME:$WNAME.1 "./p.sh y 2 1" C-m
sleep $MIN_ITERV
tmux send-keys -t $SNAME:$WNAME.2 "./p.sh y 3 1" C-m

sleep $JOB_ITERV

tmux send-keys -t $SNAME:$WNAME.3 "./p.sh y 1 2" C-m
sleep $MIN_ITERV
tmux send-keys -t $SNAME:$WNAME.4 "./p.sh y 2 2" C-m
sleep $MIN_ITERV
tmux send-keys -t $SNAME:$WNAME.5 "./p.sh y 3 2" C-m


sleep $JOB_ITERV

tmux send-keys -t $SNAME:$WNAME.6 "./p.sh y 1 3" C-m
sleep $MIN_ITERV
tmux send-keys -t $SNAME:$WNAME.7 "./p.sh y 2 3" C-m
sleep $MIN_ITERV
tmux send-keys -t $SNAME:$WNAME.8 "./p.sh y 3 3" C-m
