# 编写脚本，让使用者输入一个数字，程序可以由 1+2+3... 一直累加到使用者输入的数字为止。
#!/bin/bash
read -p "input a number：" num
sum=0
for ((i = 1; i <= $num; i++)); do
    sum=$((sum + i))
done

echo "the result of '1+2+3+...$num' is ==> " $sum
