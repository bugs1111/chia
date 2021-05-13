

tmux new-session -d
tmux split -h
tmux split -v
tmux split -v

tmux send-keys -t 0:0.0 'echo hi' C-m

tmux selectp -t 1 

tmux a


