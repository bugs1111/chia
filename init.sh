source global.sh

sshpass -p chiachia sudo apt update -y --fix-missing
sshpass -p chiachia sudo apt upgrade -y --fix-broken
sshpass -p chiachia sudo apt autoremove -y

sshpass -p chiachia sudo apt install git tmux sshpass ntpdate curl -y
sshpass -p chiachia sudo ntpdate cn.ntp.org.cn 
sshpass -p chiachia sudo hwclock -w

if [ -d $CHIAROOT ];then
  echo 'CHIA 已经存在，删除旧的！'
  rm -rf $CHIAROOT
fi


echo '下载并安装CHIA。'
git clone https://github.com/Chia-Network/chia-blockchain.git -b latest $CHIAROOT && cd $CHIAROOT  && bash install.sh && . ./activate && chia init


if [ -d "~/hpool" ];then
  echo 'hpool 已经存在， 删除旧的！'
  rm -rf ~/hpool
fi

echo '复制HPOOL。'
cp -rf ~/chia/hpool/ ~/
sed "/minerName:/ c minerName: $HOSTNAME" ~/chia/hpool/config.yaml > ~/hpool/config.yaml

cp -f ~/chia/tmux/tmux.conf ~/.tmux.conf


echo '清理临时盘。'
rm -rf /mnt/t1/*
rm -rf /mnt/t2/*
rm -rf /mnt/t3/*


echo '加载机械硬盘。'
sshpass -p chiachia sudo mount /dev/sdb /mnt/d1
sshpass -p chiachia sudo mount /dev/sdc /mnt/d2
sshpass -p chiachia sudo mount /dev/sdd /mnt/d3