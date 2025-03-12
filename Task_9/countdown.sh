echo "Enter a starting number: "
read num
echo "Starting..."
function countdown
{
	while [ $num -ge  0 ]
	do 
		echo "$num"
		if [[ $num -eq 0 ]]
		then
			echo "Time's up!"
		fi
		sleep 1
		((num--))		
	done
}

countdown
