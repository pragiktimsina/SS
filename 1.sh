if [ $# -gt 0 ]
then
	echo "backup files..."
	tar -czvf newbackup.tar $1
else
	echo "please Enter arguments"
fi
