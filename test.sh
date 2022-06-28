#! /bin/sh

salutation="Hello"

echo $salutation
echo "$salutation"
echo '$salutation'
echo \$salutation
echo Hello
echo "The program $0 is now running"
echo "The second parameter was $2"
echo "The first parameter was $1"
echo "the parameter list was $*"
echo "The user's home directory is $HOME"

echo "Please enter a new greeting"
read salutation
echo $salutation


a="Hello"
b="hello"
if [ a = b ]; then
    echo same
else
    echo different
fi


for foo in hello world !
do
    echo $foo
done


gender() {
    echo "Are you a man?"
    while true
    do
	echo -n "Enter yes or no:"
	read x
	case "$x" in
	    y | yes ) return 0;;
	    n | no )  return 1;;
	    * )       echo "Answer yes or no"
	esac
    done
}

if gender
then
    echo "Hello,sir."
else
    echo "Hello,madam."
fi

exit 0
