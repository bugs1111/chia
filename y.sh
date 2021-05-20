source global.sh

# echo $ITERV

echo "start 1 jobs."
tmux send-keys -t $SNAME:$WNAME.0 "./py.sh 1 1" C-m
tmux send-keys -t $SNAME:$WNAME.1 "./py.sh 2 1" C-m
tmux send-keys -t $SNAME:$WNAME.2 "./py.sh 3 1" C-m

echo "wait for $ITERV seconds."
sleep $ITERV

echo "start 2 jobs."
tmux send-keys -t $SNAME:$WNAME.3 "./py.sh 1 2" C-m
tmux send-keys -t $SNAME:$WNAME.4 "./py.sh 2 2" C-m
tmux send-keys -t $SNAME:$WNAME.5 "./py.sh 3 2" C-m


echo "wait for $ITERV seconds."
sleep $ITERV

echo "start 3 jobs."
tmux send-keys -t $SNAME:$WNAME.6 "./py.sh 1 3" C-m
tmux send-keys -t $SNAME:$WNAME.7 "./py.sh 2 3" C-m
tmux send-keys -t $SNAME:$WNAME.8 "./py.sh 3 3" C-m
