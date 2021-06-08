source global.sh

# echo $JOB_ITERV

tmux send-keys "./p.sh B 1 1" C-m C-m
sleep $MIN_ITERV
tmux send-keys "./p.sh B 2 1" C-m C-m
sleep $MIN_ITERV
tmux send-keys "./p.sh B 3 1" C-m C-m

sleep $JOB_ITERV

tmux send-keys "./p.sh B 1 2" C-m C-m
sleep $MIN_ITERV
tmux send-keys "./p.sh B 2 2" C-m C-m
sleep $MIN_ITERV
tmux send-keys "./p.sh B 3 2" C-m C-m


sleep $JOB_ITERV

tmux send-keys "./p.sh B 1 3" C-m C-m
sleep $MIN_ITERV
tmux send-keys "./p.sh B 2 3" C-m C-m
sleep $MIN_ITERV
tmux send-keys "./p.sh B 3 3" C-m C-m
