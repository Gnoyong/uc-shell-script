# 可以将 /etc/passwd 的第一栏取出，而且每一栏都以一行字串『The 1 account is "root" 』来显示，那个 1 表示行数。例如：
# The 1 account is "root"
# The 2 account is "bin"
# .....省略.
# The 20 account is "liuxiaohong"
# 使用命令 cut –d ':' -f1 /etc/passwd 可获取用户名字
#!/bin/bash
list=$(cut -d ':' -f1 /etc/passwd)
count=1
for user_name in $list; do
    echo "The $count account is \"$user_name\""
    count=$((count + 1))
done
