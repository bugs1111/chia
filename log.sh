#!/bin/bash
source global.sh


sendWX() {
    NOW=`date '+%Y-%m-%d %H:%M:%S'`
    URL="https://qyapi.weixin.qq.com/cgi-bin/webhook/send?key=988bbd9e-cf66-401d-88cb-4d5e6be50b5e"

    curl -s $URL -H 'Content-Type: application/json' \
    -d "{
            \"msgtype\": \"text\",
            \"text\": {
                \"content\": \"$NOW\n$1    t$2 q$3\n[E] $4\"
            }
    }" > /dev/null

}


# t q
checklog_error() {
    NOW=`date '+%Y-%m-%d %H:%M:%S'`
    LOGFN=~/chia/logs/log-$1$2.log
    LOGOLDFN=~/chia/logs/log-$1$2.log.oldstate
    LOGNEWFN=~/chia/logs/log-$1$2.log.newstate

    if [ ! -r $LOGFN ]; then
        return
    fi

    touch $LOGOLDFN

    grep -i "error" $LOGFN > $LOGNEWFN

    diff $LOGOLDFN $LOGNEWFN > /dev/null
    if [ $? == 1 ]; then
        LASTERR=`tail -n 1 $LOGNEWFN`
        sendWX $HOSTNAME $1 $2 "$LASTERR"
        echo "=============================="
        echo "$NOW [$HOSTNAME] T$1 Q$2   "
        echo "------------------------------"
        echo "$LASTERR"
        echo
    fi

    cp -f $LOGNEWFN $LOGOLDFN
    rm $LOGNEWFN
}

# t q
checklog_info() {
    NOW=`date '+%Y-%m-%d %H:%M:%S'`
    LOGFN=~/chia/logs/log-$1$2.log
    LOGOLDFN=~/chia/logs/log-$1$2.log.info_oldstate
    LOGNEWFN=~/chia/logs/log-$1$2.log.info_newstate
    LOGDIFFFN=~/chia/logs/log-$1$2.log.info_diff

    if [ ! -r $LOGFN ]; then
        return
    fi

    touch $LOGOLDFN
    grep -E "$LOGF" $LOGFN > $LOGNEWFN

    diff -n $LOGOLDFN $LOGNEWFN > $LOGDIFFFN
    if [ $? == 1 ]; then
        echo "=============================="
        echo "$NOW [$HOSTNAME] T$1 Q$2   "
        echo "------------------------------"
        cat $LOGDIFFFN | tail -n +2
        echo
    fi

    # if [ $? == 1 ]; then
    #     LASTERR=`tail -n 1 $LOGNEWFN`
    #     sendWX $HOSTNAME $1 $2 "$LASTERR"
    #     echo T$1 Q$2 "$LASTERR"
    # fi

    cp -f $LOGNEWFN $LOGOLDFN
    rm $LOGNEWFN $LOGDIFFFN
}



# 当Ctrl+c 清空屏幕再退出，见引用3
trap "clear;echo -e '\033[?25h';echo 'exit ok.';exit" 2

# 翻一个新屏幕
clear

# 隐藏光标
echo -e '\033[?25l'

rm -f logs/*state


while true; do

    # check logs
    checklog_error 1 1
    checklog_error 1 2
    checklog_error 1 3

    checklog_error 2 1
    checklog_error 2 2
    checklog_error 2 3

    checklog_error 3 1
    checklog_error 3 2
    checklog_error 3 3

    #check logs  
    checklog_info 1 1
    checklog_info 1 2
    checklog_info 1 3

    checklog_info 2 1
    checklog_info 2 2
    checklog_info 2 3

    checklog_info 3 1
    checklog_info 3 2
    checklog_info 3 3

    #count down
    for ((chrono=10; chrono > 0; chrono--)); do
        echo -ne "刷新等待 ${chrono}s ...  \r"
        sleep 1
    done

done
