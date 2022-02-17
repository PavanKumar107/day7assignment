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
