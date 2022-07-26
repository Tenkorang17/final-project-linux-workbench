

function countFiles {
	while true
	do
		echo "How many files are in the current directory?: "
        	read Files


        	local number=$(pwd | ls | wc -l)

		if [[ $Files -eq $number ]]
		then
		 	echo "Congratulations, you got it right"
			break
		else
			if [[ $Files -gt $number ]]
			then
				echo "Your guessed number is larger than the expected number"
			else
				echo "Your guessed number is smaller than the \
					expected number"
			fi	
		fi
		
	done
}
countFiles
