# chia name
CHIA=chia-blockchain

CHIAROOT=~/$CHIA

# tmux session name
SNAME="$HOSTNAME"

# tmux window name
WNAME="CHIA"

# log 过滤器
LOGF="^Starting phase|^Time for phase|^Total time"

# 任务间隔 30 mins
JOB_ITERV=$[ 30 * 60 ]
# 最小间隔 2 mins
MIN_ITERV=$[ 2 * 60 ]

# password
PWD=chiachia

# 不同的配置 Famer pkey 、 Pool pkey 、 HPool API Key
PK_B=b76798e0a7a41e27eea6eb2c40c57048d0765cc246de3a63bf9c9d14e9d6faf4da3c6516e248401c0b48caa9565a7453
FK_B=b58fc9d26e7249eb0f0ee553e94284319916de5c9d7ef4ab04eecf28361e1b891499580e43ae763fe3feb42cf1c36309
HP_B=
MSG_X="阿强 测试用"

FK_Z=
PK_Z=
HP_Z=
MSG_X="阿力 账号"

PK_Y=94d6abb0c5197892ff057b50e7d65d03ca485bcac6b6acea6b0dac883719d7668debe4e4ffc9db509d48b805091d9ace
FK_Y=b4c607b0d55c1d0df93955cb126182140b3b0f126a02952b11eef7942fafc8e2975cc87b708e69902e7735f07818e475
HP_Y=a0e8bba6-9802-48c5-a80e-63e7e9ba6e20
MSG_X="老熊 账号"

# 杨老板业务 16T 36盘
PK_X=ada9c43e0cc2c1aa504696ae16dcae38197b4a5672b356a74ad52c1ba5ad9c63c73efbb9afff0d695eaaf27d34e0c50a
FK_X=98b940a158a79cc7f6ed68a9b50cce5c1436c81ee8cc48d6bd2d820af3315560b091dc805b8eb5bb49cbc34cf6745141
HP_X=
MSG_X="杨老板 16T 36盘"

# 王旭业务 8T 540盘 （340 + 200）
PK_W=91a759256eb41c7ca5e1f283dc6274c4d4677a65713da9eca34188db8967fc4ee861814083457b3a75727b15178ad491
FK_W=aa5f52b02f2c98166d9f78a9325d2262a0cea5a15e492191df84216e23bf44b25ef283a2c3d0c248a72294edb6a24082
HP_W=
MSG_W="王旭 8T 540 （340 + 200）"

# 结束


# chia_plot <pool_key> <farmer_key> [tmp_dir] [tmp_dir2] [num_threads] [log_num_buckets]
~/plotter/build/chia_plot \
  -p ada9c43e0cc2c1aa504696ae16dcae38197b4a5672b356a74ad52c1ba5ad9c63c73efbb9afff0d695eaaf27d34e0c50a \
  -f 98b940a158a79cc7f6ed68a9b50cce5c1436c81ee8cc48d6bd2d820af3315560b091dc805b8eb5bb49cbc34cf6745141 \
  -n -1 \
  -r 32 \
  -t /mnt/t1/ \
  -2 /mnt/t1/ \
  -d /mnt/d1/

