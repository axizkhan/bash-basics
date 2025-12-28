#String data type
name="Kuldeep"
greeting="hello there, I am "
fullname="$greeting$name"
echo $fullname

#number

num1=10
num2=20

sum=$((num1+num2))
difference=$((num1-num2))
product=$((num1*num2))
quotient=$((num1/num2))

echo "a= $num1, b=$num2"
echo "Sum:$sum, Difference: $difference, Product: $product, Quotient: $quotient"

#Array

fruits=("apple" "mango" "banana")
echo ${fruits[0]}
echo ${fruits[1]}
echo ${fruits[2]}

echo "All element is array"

echo ${fruits[@]}

echo "Length of array"

echo ${#fruits[@]}

#Associative Arrays (objects in js) (key,value pair)

declare -A colors

colors[apple]="red"
colors[mango]="yellow"
colors[grape]="green"

echo ${colors[apple]}
echo ${colors[mango]}

#deleting field from associative array

unset colors[graps]

echo $colors






