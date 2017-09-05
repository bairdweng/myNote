
#!/ bin / bash
#进入当前文件夹，工作区域。
echo "$result"
eval 'cd `dirname $0`'
#获取目录下所有文件
flie=$(ls new)
#进入文件夹
eval 'cd new'
index=0;
for i in $flie
do
info=$(file $i)
IN=$info;
IFS=','; arrIN=($IN); unset IFS;
k=0
for j in "${arrIN[@]}"; do
	if [ $k == '1' ]; then
      echo "2133123213123==$j"	
    fi		
    k=`expr $k + 1`
done
# echo "====$info"
# eval 'file $i'
# 自增index
index=`expr $index + 1`
#新文件命名
# newfile=$newfileName$index".txt"
# eval 'mv $i $newfile'
# echo '更改'$i'-------------->'$newfile
done
