
SNAME="$HOSTNAME"
WNAME="CHIA"
HPATH="~/"


#echo $SNAME
#echo $HPATH

# check session is already ?
tmux has-session -t $SNAME &> /dev/null

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


tmux selectp -t 0
tmux splitw -h -p 70 -c $HPATH
tmux selectp -t 0
#tmux splitw -v -p 50 # split it into two halves

#tmux selectp -t 2    # select the new, second (2) pane
#tmux splitw -v -p 50 # split it into two halves
#tmux selectp -t 0    # go back to the first pane

tmux send-keys -t $SNAME:$WNAME.0 'echo hi' C-m

tmux selectp -t 1 

tmux a -t $SNAME


