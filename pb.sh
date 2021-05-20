
if [ $# -lt 2 ]; then
	echo "  USAGE: py <disk num> <queue num>"
	exit
fi


echo "removing tmp dir '/mnt/t$1/q$2'."
rm -rf /mnt/t$1/q$2

echo "start plotting on disk 'd$1' ($2/3)."
cd ~/chia-blockchain && . ./activate && chia plots create -f b58fc9d26e7249eb0f0ee553e94284319916de5c9d7ef4ab04eecf28361e1b891499580e43ae763fe3feb42cf1c36309 -p 94d6abb0c5197892ff057b50e7d65d03ca485bcac6b6acea6b0dac883719d7668debe4e4ffc9db509d48b805091d9ace -k 32 -b 3200 -r 4 -n 40 -t /mnt/t$1/q$2 -d /mnt/d$1
