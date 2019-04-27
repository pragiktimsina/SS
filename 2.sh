echo "Enter filename"
read fname
if [ -f $fname ]
then
	echo "Soft links are: "
	ls -l | grep "^l.*.$fname" | cut -d " " -f14
else
	echo "File doesnot exist"
fi
