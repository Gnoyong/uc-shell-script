#!/bin/bash
export PATH=/bin:/sbin:/usr/bin:/usr/sbin

if [ ! -f account1.txt ]; then
    echo "所需要的账号文件不存在，请创建account1.txt，每行一个账号>名称"
    exit 1
fi

usernames=$(cat account1.txt)

for username in $usernames; do
    useradd $username
    echo $username | passwd --stdin $username
    chage -d 0 $username
done

# 将上述脚本，手动添加到系统中
# 新增一个account1.txt的文件，文件中手动写入多个用户名
# 执行chmod 755 account1.sh修改脚本的权限
# 使用命令  ./account1.sh执行脚本，执行完成后，查看/etc/passwd下用户是否添加成功
# 使用新添加的用户登录系统。
