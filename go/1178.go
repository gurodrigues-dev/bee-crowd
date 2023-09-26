package main

import "fmt"

func main() {
	var arr [100]float64
	var x float64

	fmt.Scanf("%f", &x)
	arr[0] = x
	for i := 1; i < 100; i++ {
		x /= 2
		arr[i] = x
	}

	for i, v := range arr {
		fmt.Printf("N[%d] = %.4f\n", i, v)
	}
}
