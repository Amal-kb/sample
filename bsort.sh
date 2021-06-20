echo "Enter numbers saperated by space"
read -a array
len=${#array[@]}
len=`expr $len - 1`
swap=0
for ((i=0;i<=len;i++));
do
    for ((j=0;j<=($len -i -1);j++));
    do
        if(( ${array[$j]} < ${array[$j + 1]} ))
        then
            temp=${array[$j]}
            array[$j]=${array[$j + 1]}
            array[$j + 1]=$temp
            swap=1
        fi
    done
    if(($swap == 0))
    then
        echo $i
        echo "this is already swapped"
        exit
    fi
done
echo "Sorted numbers are"
for ((i=0;i<=$len;i++));
do
    echo ${array[i]}
done
