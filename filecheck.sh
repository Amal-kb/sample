echo "Enter filename of your file"
read file

FILE=$file.txt
if [[ -f "$FILE" ]];
then
    str=`cat $file.txt`

    char=`echo -n "$str" | wc -c`

    word=`echo -n "$str"  | wc -w`
  
    WWS=`cat $file.txt | wc -m`
    st=`sed 's/ //g' $file.txt`
    WSN=`expr length $st`
    space=`expr $WWS - $WSN`

    special_char=`echo ${str//[^\~()!@#$&*-]/}`
	special=`expr length "$special_char"`
	  
	 echo "Number of characters use in this file  :" $char
     echo "Number of  words use in this file :" $word
     echo "Number of White Spaces use in this file :" $space
     echo "Number of special symbols use in this file :"$special
else
    echo "This file does not exist !!!"
fi
 

 
