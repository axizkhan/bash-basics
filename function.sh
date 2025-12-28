greet () {
	echo "hello world"
}


greet 


sum () {
	local sum=$(($1 + $2))
	echo $sum
}

result=$(sum 1 2)

echo "the sum is $result"




