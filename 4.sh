echo "Enter string to be search"
read str
echo "enter filename"
read fname
if [ -f $fname ]
then
	echo "The lines containing $str in  $fname:"
	grep $str $fname
else
	echo "File doesnot exit"
fi
