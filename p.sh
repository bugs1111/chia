if [ $# -lt 1 ]; then
        echo "  USAGE: p 1,2,3,4,5,6."
        exit 1
fi

if [ $1 != 1 ] && [ $1 != 2 ] && [ $1 != 3 ] && [ $1 != 4 ] && [ $1 != 5 ] && [ $1 != 6 ]; then
        echo "INVALIED PARM $1"
        exit
fi

echo $1


tmux send-keys -t chia:plots.0 'bash 1.sh' C-m
tmux send-keys -t chia:plots.1 'bash 2.sh' C-m
tmux send-keys -t chia:plots.2 'bash 3.sh' C-m
tmux send-keys -t chia:plots.3 'bash 4.sh' C-m

