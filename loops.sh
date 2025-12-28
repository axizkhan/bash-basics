for i in {1..5}; do
	echo "iterate $i"
done

echo "for loop with array"

fruits=("apple" "mango" "banana")

for((i=0; i<${#fruits[@]}; i++ )); do
	echo "${fruits[i]}"
done

echo "while loop"

a=1

while((a <= 5)); do
	echo "$a"
	((a++))
done

echo "while loop using square baracket"

while [ $a -le 10  ]; do
	echo "$a"
	((a++))

done
echo "until loop"
until [ $a -eq 15 ]; do
	echo "$a"
	((a++))
done




echo "break and continue in loop"
while [ $a -le 25  ]; do
	if [ $a -eq 20  ]; then
		  ((a++))

		continue
	fi
	echo "$a"
	if [ $a -eq 22  ]; then
		  ((a++))

		break
	fi
	((a++))
done



