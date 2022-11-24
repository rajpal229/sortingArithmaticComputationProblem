echo "Welcome to the Sorting Arithmetic Computation Problem"

read -p "Enter first value 'a' : " a;
read -p "Enter second value 'b' : " b;
read -p "Enter third value 'c' : " c;

Echo "values are $a $b $c"

compute1=$(($a+$b*$c))

compute2=$(($a*$b+$c))

compute3=`awk 'BEGIN{printf("%0.2f", '$c'+'$a'/'$b')}'`

compute4=$(($a%$b+$c))


declare -A compute

compute[compute1]=$compute1
compute[compute2]=$compute2
compute[compute3]=$compute3
compute[compute4]=$compute4

echo "a+b*c = " ${compute[compute1]}
echo "a*b+c = " ${compute[compute2]}
echo "c+a/b = " ${compute[compute3]}
echo "a%b+c = " ${compute[compute4]}
echo "All values in Dictionary "${compute[@]}

array[compute++]=${compute[compute1]}
array[compute++]=${compute[compute2]}
array[compute++]=${compute[compute3]}
array[compute++]=${compute[compute4]}

echo "All values in array: "${array[@]}

echo "Sorting in Descending Order"
for i in ${array[@]}; do echo $i; done | sort -nr

echo "Sorting in Ascending Order"
for i in ${array[@]}; do echo $i; done | sort -n
