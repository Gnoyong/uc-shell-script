# 先查看一下 ~/logical 这个名称是否存在； 
# 若不存在，则创建一个文件，使用 touch 来创建，创建完成后离开； 
# 如果存在的话，判断该名称是否为文件，若为文件则将之删除后创建一个目录，名为 logical ，之后离开； 
# 如果存在的话，而且该名称为目录，则移除此目录！
#!/bin/bash
file_path=~/logical
if [[ -f "$file_path" || -d "$file_path" ]]; then
    echo "$file_path exists"
    if [[ -f $file_path ]]; then
        echo "$file_path is a file"  
                 echo "$file_path will be deleted as it's a file and a direct    ion will be created"
        rm $file_path
        mkdir $file_path
    else
        echo "$file_path is a direction"
        echo "delete direction $file_path"
        rmdir $file_path
    fi
else
    touch ~/logical
    echo "file $file_path is created"
fi~     