echo "Welcome to the Sorting Arithmetic Computation Problem"

read -p "Enter first value 'a' : " a;
read -p "Enter second value 'b' : " b;
read -p "Enter third value 'c' : " c;

Echo "values are $a $b $c"

compute1=$(($a+$b*$c))
echo "a+b*c = "$compute1

compute2=$(($a*$b+$c))
echo "a*b+c = "$compute2

compute3=`awk 'BEGIN{printf("%0.2f", '$c'+'$a'/'$b')}'`
echo "c+a/b = "$compute3

compute4=$(($a%$b+$c))
echo "a%b+c = "$compute4
