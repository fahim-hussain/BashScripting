
if [ ! $# -eq 2 ]
 then
	echo "No Files passed"
elif [ ! -f $1 ]
 then
	echo Error File: "${1}" does not exist
elif [ ! -f $2 ]
 then
	echo Error file: "${2}" does not exist
else
	var1=$(stat -c %s $1)
	var2=$(stat -c %s $2)
	if [ "$var1" -eq "$var2" ]
	 then
		echo "Files are similar"
	else
		echo "Files are different"
	fi
fi
