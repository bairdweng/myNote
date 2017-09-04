
#!/ bin / bash
#进入当前文件夹，工作区域。
result=''
spliter(){
 OLD_IFS="$IFS" 
 IFS="," 
 arr=($1) 
 IFS="$OLD_IFS" 
 result="${arr[1]}"
 echo "$result"
 return "$result"
 # return "${arr[$2]}"
}
a="one,two,three,four"
spliter $a 1
echo "=============$?"
# eval 'cd `dirname $0`'
# #获取目录下所有文件
# flie=$(ls new)
# #进入文件夹
# eval 'cd new'

# # testimage='LaunchImage.png'
# # eval 'file $testimage'
# index=0;
# for i in $flie
# do
# info=$(file $i)
# echo $info
# # eval 'file $i'
# # # 自增index
# # index=`expr $index + 1`
# # #新文件命名
# # newfile=$newfileName$index".txt"
# # eval 'mv $i $newfile'
# # echo '更改'$i'-------------->'$newfile
# done
