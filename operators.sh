

#0 means true
#1 means false
# $? means: exit status of the last executed command



echo "Comparison operators []"
[ 10 -eq 20 ]; echo $?
[ 10 -ne 20 ]; echo $?
[ 10 -lt 20 ]; echo $?
[ 5  -le 30 ]; echo $?
[ 20 -gt 12 ]; echo $?
[ 30 -ge 25 ]; echo $?

echo "Comparison operators in using (())"

((10>4)); echo $?
((10==4)); echo $?
((10!=4)); echo $?

((10>=4)); echo $?
((10<=4)); echo $?
((10<4)); echo $?


echo "Logical operators"
#square bracket 
[[ 10 -eq 10 && 30 -gt 20 ]]
echo $?

#parentheses

((10 == 10 && 30 > 20))
echo $?

((10 == 20 || 30>50))
echo $?

(( !(10 > 20) ))
echo $?










