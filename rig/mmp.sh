
# make mount point 创建加载挂接点
# 保存这个文件到 ~/chia/mmp.sh


for i in $(seq 1 24); do   
  sshpass -p chiachia sudo mkdir /mnt/d$i
done 