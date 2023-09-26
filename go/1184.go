package main

import "fmt"

func main() {
	var x, sum, div float64
	var calc string

	fmt.Scanf("%s", &calc)

	for i := 0; i < 12; i++ {
		for j := 0; j < 12; j++ {
			fmt.Scanf("%f", &x)
			if j < i {
				sum += x
				div += 1
			}
		}
	}

	if calc == "M" {
		sum /= div
	}
	fmt.Printf("%.1f\n", sum)
}
