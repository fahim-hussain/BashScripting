echo -n "Please enter a line number: "  

read lineNum

if [[ -n ${lineNum//[0-9]/} ]]
then
	echo "Invalid input please enter numbers only"
else
	sed -n "${lineNum}p" data.txt
fi
