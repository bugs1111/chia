
if [ $# -lt 1 ]; then
	echo "  USAGE: p 1,2,3,4,5,6."
	exit 1
fi

if [ $1 != 1 ] && [ $1 != 2 ] && [ $1 != 3 ] && [ $1 != 4 ] && [ $1 != 5 ] && [ $1 != 6 ]; then
	echo "INVALIED PARM $1"
	exit 2
fi

echo $1

