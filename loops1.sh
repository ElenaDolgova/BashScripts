gcd() {
    if [[ "$2" == "0" ]]
    then
        echo "GCD is $1"
    else
        #echo "$1 $2"
        local a=$2
        local b=$1
        let "b=$b%$a"
        gcd $a $b
    fi;
}

a=1
while [[ "$a" != "" ]]
do
read a b
if [[ "$a" == "" ]]
then
echo "bye"
break
fi

gcd $a $b

done

