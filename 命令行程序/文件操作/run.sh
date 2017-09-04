
#!/ bin / bash
#进入当前文件夹，工作区域。
eval 'cd `dirname $0`'
#获取目录下所有文件
flie=$(ls directory)
#进入文件夹
eval 'cd directory'
index=0;
for i in $flie
do
#自增index
index=`expr $index + 1`
#新文件命名
newfile="江爷2爷"$index".txt"
eval 'mv $i $newfile'
echo '更改'$i'-------------->'$newfile
done
