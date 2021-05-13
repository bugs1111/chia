#!/bin/bash


SNAME="$HOSTNAME"
WNAME="CHIA"
HPATH="~/"


#echo $SNAME
#echo $HPATH

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
tmux new-session -s $SNAME -c $HPATH -n $WNAME -d
#tmux split -h
#tmux split -v
#tmux split -v


#tmux selectp -t 0
tmux split -h -p 30 -c $HPATH


tmux split -v -p 99 -c $HPATH
tmux split -v -p 99 -c $HPATH
tmux split -v -p 99 -c $HPATH
tmux split -v -p 99 -c $HPATH
tmux split -v -p 99 -c $HPATH
tmux split -v -p 99 -c $HPATH
tmux split -v -p 99 -c $HPATH
tmux split -v -p 99 -c $HPATH

tmux selectp -t 0
tmux split -v -p 90 -c $HPATH
tmux selectp -t 0
tmux split -h -p 60 -c $HPATH



tmux send-keys -t $SNAME:$WNAME.0 C-b t
tmux send-keys -t $SNAME:$WNAME.1 "cd ~/hpool" C-m
tmux send-keys -t $SNAME:$WNAME.2 "bash ~/chia/info.sh" C-m


tmux selectp -t 2

tmux a -t $SNAME


