#! /bin/bash
# cars.sh
# Emily Nguyen

while true
do
	echo "Type the number 1 to enter a new car"
	echo "Type the number 2 to display the list of cars"
	echo "Type the number 3 to quit and exit the program"
	read NUM

	case "$NUM" in
		"1") 
			echo "Enter the year: "; read YEAR
			echo "Enter the make: "; read MAKE
			echo "Enter the model: "; read MODEL
			
			new_car="${YEAR}:${MAKE}:${MODEL}"
			new_car >> My_old_cars.txt;;
		"2")
			sort My_old_cars.txt > My_old_cars_sorted.txt
			echo "Your list of cars:"
			cat My_old_cars_sorted.txt;;
		"3")
			echo "Goodbye"
			break;;
		*)
			echo "Please enter a valid number"
	esac
done
