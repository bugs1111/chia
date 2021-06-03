source global.sh

if [ $# -lt 3 ]; then
	echo "  使用方法: $0 <KEY配置名[b,y,z,x]> <临时盘编号[1,2,3]> <队列编号[1,2,3]>"
	exit
fi

FK=
PK=

if [ $1 == 'b' ]; then
  FK=$FK_B
  PK=$PK_B
elif [ $1 == 'y' ]; then
  FK=$FK_Y
  PK=$PK_Y
elif [ $1 == 'z' ]; then
  FK=$FK_Z
  PK=$PK_Z
elif [ $1 == 'x' ]; then
  FK=$FK_X
  PK=$PK_X
else
  echo "  请清楚正确的KEY配置名！"
  exit
fi

if [ -z $FK ] || [ -z $PK ]; then
  echo "  配置‘$1’，没有对应正确的FK和PK，请检查配置文件！"
  exit
fi

if [ $2 -lt 0 ] || [ $2 -gt 3 ] || [ $3 -lt 0 ] || [ $3 -gt 3 ]; then
  echo "  临时盘编号和队列编号仅限于 [1,2,3]"
  exit
fi


echo "开始清空临时盘 '/mnt/t$2/q$3' ..."
rm -rf /mnt/t$2/q$3

echo "开始绘制 'd$2' ($3/3)."
cd CHIAROOT && . ./activate && chia plots create -f FK -p PK -k 32 -b 3200 -r 4 -n 999 -t /mnt/t$2/q$3 -2 /mnt/d$2 -d /mnt/d$2
