package main

import (
	"fmt"
)

func main() {
	var month int
	var monthName string

  fmt.Scanf("%d", &month)

	switch month {
	case 1:
		monthName = "January"
	case 2:
		monthName = "February"
	case 3:
		monthName = "March"
	case 4:
		monthName = "April"
	case 5:
		monthName = "May"
	case 6:
		monthName = "June"
	case 7:
		monthName = "July"
	case 8:
		monthName = "August"
	case 9:
		monthName = "September"
	case 10:
		monthName = "October"
	case 11:
		monthName = "November"
	case 12:
		monthName = "December"
	}

	fmt.Println(monthName)
}
