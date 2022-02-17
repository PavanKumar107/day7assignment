declare -a random
for((i=1;i<=10;i++))
do
  random=(${random[@]} $((RANDOM%900 +100)))
done
l=${#random[@]}
for ((i = 0; i<$l; i++))
do
    
    for((j = 0; j<$(($l-$i-1)); j++))
    do
        p=$(($j+1))
        if [ ${arr[$j]} -gt ${arr[$p]} ]
        then
            temp=${arr[$j]}
            arr[$j]=${arr[$p]}
            arr[$p]=$temp
        fi
    done
done
echo ${random[@]}
echo "Second smallest element : "${random[1]}
echo "Second largest element : "${random[8]}
Naresh Y2:36 PM
declare -a array
read -p "enter the number" num
p=0
while [ $(($num % 2)) -eq 0 ]
do
  p=1
  num=$(($num / 2))
done
if [ $p -eq 1 ]
  then
    array=(${array[@]} 2)
fi
for ((i=3;i*i<=$num;i+=2))
do
  q=0
  while [ $(($num % $i)) -eq 0 ]
  do
    q=1
    num=$(($num / i))
  done
  if [ $q -eq 1 ]
    then
      array=(${array[@]} $i)

  fi

done
if [ $num -gt 2 ]
  then
    array=(${array[@]} $num)
fi
echo "Prime factors: " ${array[@]}
