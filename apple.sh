#!/bin/bash
echo "你想和小苹果玩游戏吗？"
read -p "那你猜猜我心中的数字是什么^_^：" j
num=8
expr 2 + "$j" &>/dev/null
if [ $? -eq 2 ]
then
	echo "不可以输入非数字"
elif [ $j -eq $num ]
then
	echo "你猜对了o(*￣▽￣*)ブ" 
elif [ -z $j ]
then
echo "不能输入空值哟！" 

elif [ $j -gt $num ]
then
	echo "你猜的数字比较大哦"
else [ $j -lt $num ]
	echo "你猜的数字小了"
fi
