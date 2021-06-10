source global.sh


# check session is already ?
tmux has-session -t $SNAME &> /dev/null

#echo $?
# if has session.
if [ $? == 0 ]; then
#  echo '$SNAME existed!!! please attach.'
  tmux a -t $SNAME
  exit
fi


# create a new $SNAME session
tmux new-session -s $SNAME -n $WNAME -d
#tmux split -h
#tmux split -v
#tmux split -v

tmux split -v -p 20

tmux selectp -t 0
tmux split -h -p 60
tmux split -h -p 50


tmux send-keys -t $SNAME:$WNAME.2 "sshpass -p chiachia sudo dstat -cmd" C-m


# tmux send-keys -t $SNAME:$WNAME.0 C-b t
# tmux send-keys -t $SNAME:$WNAME.10 "./hpool-miner-chia" C-m
tmux send-keys -t $SNAME:$WNAME.0 "bash log.sh" C-m
# tmux send-keys -t $SNAME:$WNAME.1 "echo 'bash p[b,x,y,z].sh 来启动绘制程序。'" C-m
tmux send-keys -t $SNAME:$WNAME.3 "echo 'bash p2[b,x,y,z].sh 来启动绘制程序。'" C-m
tmux selectp -t 3
tmux a -t $SNAME
