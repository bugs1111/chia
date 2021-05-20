# lao xiong zhuan yong

echo "removing tmp dir '/mnt/t$1/q$2'."
rm -rf /mnt/t$1/q$2

echo "start plotting on disk 'd$1' ($2/3)."
cd ~/chia-blockchain && . ./activate && chia plots create -f b4c607b0d55c1d0df93955cb126182140b3b0f126a02952b11eef7942fafc8e2975cc87b708e69902e7735f07818e475 -p 94d6abb0c5197892ff057b50e7d65d03ca485bcac6b6acea6b0dac883719d7668debe4e4ffc9db509d48b805091d9ace -k 32 -b 3200 -r 4 -n 40 -t /mnt/t$1/q$2 -d /mnt/d$1
