source global.sh

# check session is already ?
tmux has-session -t $SNAME &> /dev/null

#echo $?
# if has session.
if [ $? == 0 ]; then
#  echo '$SNAME existed!!! please attach.'
  tmux kill-session -t $SNAME
  echo "kill session '$SNAME' OK."
  exit
fi

echo "session '$SNAME' not run."
