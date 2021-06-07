

goo() {
  DEVS=`ls /dev | grep -E '^tt'`
  echo ${DEVS[@]}
}



foo() {
  for i in $(seq 1 10); do   
    echo $(expr $i \* 3 + 1)
  done 
}


goo
