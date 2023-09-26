package main

import "fmt"

func main() {
	var arr []int
	var x int

	for i := 0; i < 10; i++ {
		fmt.Scanf("%d", &x)
		if x <= 0 {
			x = 1
		}

		arr = append(arr, x)
	}

	for i, v := range arr {
		fmt.Printf("X[%d] = %d\n", i, v)
	}
}
