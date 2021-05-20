#!/bin/bash

source global.sh

# echo $SNAME
# echo $WNAME
# exit

# SNAME="$HOSTNAME"
# WNAME="CHIA"
# HPATH=""




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

tmux split -v -p 80

tmux selectp -t 0
tmux split -h -p 60
tmux selectp -t 0
tmux split -h -p 50


tmux selectp -t 3
tmux split -v -p 80

tmux selectp -t 3
tmux split -h -p 60
tmux selectp -t 3
tmux split -h -p 50


tmux selectp -t 6
tmux split -v -p 80

tmux selectp -t 6
tmux split -h -p 60
tmux selectp -t 6
tmux split -h -p 50


tmux selectp -t 9
tmux split -h -p 20

# tmux send-keys -t $SNAME:$WNAME.0 C-b t
tmux send-keys -t $SNAME:$WNAME.10 "cd ~/hpool" C-m
tmux send-keys -t $SNAME:$WNAME.9 "bash ~/chia/info.sh" C-m

tmux selectp -t 9
tmux a -t $SNAME
