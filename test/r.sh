source color.sh


# 当Ctrl+c 清空屏幕再退出，见引用3
trap "clear;echo -e '\033[?25h';echo 'exit ok.';exit" 2

# 翻一个新屏幕
clear

# 隐藏光标
echo -e '\033[?25l'

print_job_title() {
    printf "  $C1%1s %10s %10s\n$C0" "#" "name" "age"
}

print_job_info() {
    printf "  %1d %10s %10d\n" $1 "sam" "18" 
}


print_endding() {
    printf "刷新时间 %ds     退出 CTIL + C" "5" 
}

CNT=0
MAX=0

# 每秒刷新输出屏幕的端口统计结果
while [ true ]; do
    clear
    # 需要执行的功能命令，各写各的业务
    report=`date +%H:%M:%S`
    # echo输出特殊处理，见引用2
    echo "最后刷新 $report"
    echo


    print_job_title

    for i in $(seq 9); do
        print_job_info $i
    done 


    echo
    print_endding


    # 使用ASCI码控制光标定位回到第一行第一列，见引用1
    # echo -ne "\033[1;1H"
    # 进程睡眠1秒
    sleep 5
done

