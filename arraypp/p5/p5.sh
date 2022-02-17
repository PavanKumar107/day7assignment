declare -a array
for((i=1;i<=100;i++))
do
  if [ $(($i/10)) -eq $(($i%10)) ]
  then
    array=(${array[@]} $i)
  fi
done
echo "Result : " ${array[@]}
