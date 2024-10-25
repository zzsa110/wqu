#!/bin/bash
old_number=0
while true
do
  frame_number=$(journalctl -n 100 -u ceremonyclient|grep 'returning leader frame'|tail -1|sed 's/\}//g'|sed 's/:/ /g'|awk '{print $NF}')
  if [ "$frame_number" != "" ];then
    echo New Frame Number Is ':' $frame_number ';' Old Frame Number Is ':' $old_number '.'
    if [ "$frame_number" == "$old_number" ];then
      echo Frame Stop Restart Quil
      service ceremonyclient restart
    fi
    old_number=$frame_number
  fi
  sleep 600
done
