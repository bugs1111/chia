tmux new-session -s chia -n moni -d
tmux split -h
tmux split -v
tmux split -v

tmux send-keys -t chia:moni.1 'sudo dstat -cdm'
tmux send-keys -t chia:moni.2 'df -ht ext4' C-m
tmux send-keys -t chia:moni.3 'cd ~/hpool'

tmux new-window -n plots

tmux split -h
tmux split -v
tmux split -h
tmux split -v
tmux split -h
tmux split -v
tmux split -h
tmux split -v

tmux a


