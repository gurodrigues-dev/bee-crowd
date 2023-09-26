package main

import "fmt"

func main() {
	var n int
	var x, sum float64
	var calc string

	fmt.Scanf("%d", &n)
	fmt.Scanf("%s", &calc)

	for i := 0; i < 12; i++ {
		for j := 0; j < 12; j++ {
			fmt.Scanf("%f", &x)
			if j == n {
				sum += x
			}
		}
	}

	if calc == "M" {
		sum /= 12
	}
	fmt.Printf("%.1f\n", sum)
}
