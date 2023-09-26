package main

import "fmt"

func main() {
	var i, q int
	t := map[int]float64{
		1: 4.00,
		2: 4.50,
		3: 5.00,
		4: 2.00,
		5: 1.50,
	}
	fmt.Scanf("%d", &i)
	fmt.Scanf("%d", &q)
	fmt.Printf("Total: R$ %.2f\n", t[i]*float64(q))
}
