read -p "Enter the array : " array
declare -a array=$array
declare -a result
while [ ${#array[@]} -lt 3 ]
do
  read -p "enter the array with atleast 3 elements: " array
  declare -a array=$array

done
for((i=0;i<$((${#array[@]}-2));i++))
do
  for((j=$(($i+1));j<$((${#array[@]}-1));j++))
  do
    for((k=$(($j+1));k<$((${#array[@]}));k++))
    do
      if [ $((${array[$i]} + ${array[$j]} + ${array[$k]})) -eq 0 ]
      then
        result=(${result[@]} `echo "[" ${array[$i]} ${array[$j]} ${array[$k]} "]"`)

fi
    done

  done

done
echo ${result[@]}
