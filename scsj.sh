/bin/bash /bin/bash /bin/bash #!/bin/bash
 
#定义变量
api_keyA =“$(cd ~/ceremonyclient/node && sudo ./node-1.4.20-linux-amd64 -node-info)”


api_key = ${ api_keyA #*ID: }
api_key = ${ api_key%版本:*}
#回显 $api_key #PID

QUIL = ${ api_keyA #*余额： }
QUIL = ${ QUIL%QUIL* }
#echo $QUIL #数量

版本= ${ api_keyA #*版本: }
验证码= ${验证码%Max* }
#使用构建URL
url =“http://192.168.0.102:7001 /ip = $api_key -- -- $QUIL -- -- $Ver ”
#回显 $url


没有空间=$(echo $url | awk '{gsub(/[ \t]/, "" );打印}')


回显 $无空格
# 使用curl发送请求
curl $无空格
