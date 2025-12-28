echo "if flow"
a=5
if [ $a -gt 2 ]; then
	echo "a is 5"
fi


echo "if else flow"
b=10
c=20

if [ $b -gt $c  ]; then
	echo "b is bigger"
else
	echo "c is bigger"
fi


echo "if ele-if control flow"

d=15

if [ $d -eq 10 ]; then
	echo "d is 10"
elif [ $d -lt 10  ]; then
	echo "d is less than 10"
else 
	echo "d is bigger than 10"
fi

echo "using parentheses"

b=20
c=15

if (( b > c )); then
    echo "b is bigger"
else
    echo "c is bigger"
fi





