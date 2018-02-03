#!/bin/bash

k=21

while true;do
	echo "-------------------------------"
	echo "现在共${k}根火差"
	read -p "请输入要取的火柴（1-4）：" j
	if [[ $j =~ [^1-4] ]];then
		echo "输入的值有误，请重新输入"
		continue
	fi
	k=$((k-5))
	echo "你取走了${j}根火才，计算机取走了$((5-j))根火彩"

	if [ $k=1 ];then
		echo "你取走了最后一根火柴，计算机获胜。"
		break
	fi

done
