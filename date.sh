source global.sh

sshpass -p $PWD sudo ntpdate cn.ntp.org.cn 
sshpass -p $PWD sudo hwclock -w