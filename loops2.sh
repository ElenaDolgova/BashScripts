a=1

while [[ true ]]
do
read a b c

if [[ "$a" == "exit" ]]
then
echo "bye"
  exit
fi

if [[ "$b" == "" || "$c" == "" ]]
then
  echo "error"
  exit
else
case $b in
"+") 
    let "a=$a+$c"
    echo $a
    ;;
"-")
    let "a=$a-$c"
    echo $a
    ;;
"*")
    let "a=$a*$c"
    echo $a
    ;;
"/")
    let "a=$a/$c"
    echo $a
    ;;
"%")
    let "a=$a%$c"
    echo $a
    ;;
"**")
    let "a=$a**$c"
    echo $a
    ;;
*) 
    echo "error"
    exit
    ;;
  esac
fi

done