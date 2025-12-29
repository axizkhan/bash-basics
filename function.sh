greet () {
	echo "hello world"
}


greet 


sum () {
	local sum=$(($1 + $2))
	echo $sum

}

sum 10 20

result=$(sum 1 2)

echo "the sum is $result"




