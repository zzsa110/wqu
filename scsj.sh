#!/bin/bash
 
# 定义变量
api_keyA="$(cd ~/ceremonyclient/node && sudo ./node-1.4.20-linux-amd64 -node-info)"


api_key=${api_keyA#*ID: }
api_key=${api_key%Version:*}
#echo $api_key  #PID

QUIL=${api_keyA#*balance: }
QUIL=${QUIL%QUIL*}
#echo $QUIL  #数量

Ver=${api_keyA#*Version: }
Ver=${Ver%Max*}

timestamp=$(date +%s)
#echo $timestamp

benjina=$(hostname)

# 使用变量构建URL
#urll='{"name":"'"$benjina"'","id":"'"$api_key"'","quil":"'"$QUIL"'","ver":"'"$Ver"'","time":"'"$timestamp"'"}'
#url="http://192.168.1.107:7001/ip=$urll"
url="http://192.168.1.251:7001/ip=$benjina----$api_key----$QUIL----$Ver----$timestamp"
#echo $url


no_spaces=$(echo $url | awk '{gsub(/[ \t]/,"");print}')


echo $no_spaces
# 使用curl发送请求
curl $no_spaces
