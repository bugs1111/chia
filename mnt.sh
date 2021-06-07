source global.sh

# if [ $# -lt 2 ]; then
# 	echo "  使用方法: $0 < ntfs | ext4 > <磁盘数量n>"
# 	exit
# fi

# echo '加载机械硬盘。（加载前请先格式化）'


# for i in $(seq $2); do   
#   if [ ! -d /mnt/d1 ]; then
#     sshpass -p $PWD sudo mkdir -p /mnt/d1
#   fi
# done 

# ls /dev | grep -E '^sd'




if [ $1 == 'ntfs' ]; then
  sshpass -p $PWD sudo mount /dev/sdb1 /mnt/d1
  sshpass -p $PWD sudo mount /dev/sdc1 /mnt/d2
  sshpass -p $PWD sudo mount /dev/sdd1 /mnt/d3
else
  sshpass -p $PWD sudo mount /dev/sdb /mnt/d1
  sshpass -p $PWD sudo mount /dev/sdc /mnt/d2
  sshpass -p $PWD sudo mount /dev/sdd /mnt/d3
fi

echo '加载完成。'
