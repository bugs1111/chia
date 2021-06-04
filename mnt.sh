
echo '加载机械硬盘。（加载前请先格式化）'

if [ $1 == 'ntfs' ]; then
  sshpass -p chiachia sudo mount /dev/sdb1 /mnt/d1
  sshpass -p chiachia sudo mount /dev/sdc1 /mnt/d2
  sshpass -p chiachia sudo mount /dev/sdd1 /mnt/d3
else
  sshpass -p chiachia sudo mount /dev/sdb /mnt/d1
  sshpass -p chiachia sudo mount /dev/sdc /mnt/d2
  sshpass -p chiachia sudo mount /dev/sdd /mnt/d3
fi

echo '加载完成。'
