#!/bin/bash


# 当Ctrl+c 清空屏幕再退出，见引用3
trap "clear;echo -e '\033[?25h';echo 'exit ok.';exit" 2

# 翻一个新屏幕
clear

# 隐藏光标
echo -e '\033[?25l'

while true; do


for ((chrono=10; chrono > 0; chrono--)); do
    echo -ne "waitting ${chrono}s ...  \r"
    sleep 1
done

done
