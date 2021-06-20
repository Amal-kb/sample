echo "Enter numbers saperated by space"
read -a array
len=${#array[@]}
len=`expr $len - 1`
for ((i=0;i<=len;i++));
do
    for ((j=0;j<=($len -i -1);j++));
    do
        if(( ${array[$j]} > ${array[$j + 1]} ))
        then
            temp=${array[$j]}
            array[$j]=${array[$j + 1]}
            array[$j + 1]=$temp
        fi
    done
done
echo "Sorted numbers are"
for ((i=0;i<=$len;i++));
do
    echo ${array[i]}
done
echo "Enter a number to search"
read x
l=0
h=$len
while(( $l <= $h ))
do
    mid=`expr $l + $h`
    mid=`expr $mid / 2`

    if(( ${array[$mid]} == $x ))
    then
        mid=`expr $mid + 1`
        echo "number founded in the position" $mid
        exit
    fi 
    if(( $x < ${array[$mid]} ))
    then
        h=`expr $mid - 1`
    elif(( $x > ${array[$mid]} ))
    then
        l=`expr $mid + 1`
    fi
done

echo "Number not found !!"


