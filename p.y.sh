
if [ $# -lt 1 ]; then
	echo "  USAGE: p 1,2,3."
	exit 1
fi

if [ $1 != 1 ] && [ $1 != 2 ] && [ $1 != 3 ]; then
	echo "INVALIED PARM $1"
	exit 2
fi

echo $1

bash ../$1.sh