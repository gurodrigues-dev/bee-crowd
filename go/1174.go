package main

import "fmt"

func main() {
	var arr []float64
	var x float64

	for i := 0; i < 100; i++ {
		fmt.Scanf("%f", &x)
		arr = append(arr, x)
	}

	for i, v := range arr {
		if v > 10 {
			continue
		}
		fmt.Printf("A[%d] = %.1f\n", i, v)
	}
}
