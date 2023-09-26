package main

import "fmt"

func main() {
	var arr []int
	var x int

	fmt.Scanf("%d", &x)
	for i := 0; i < 10; i++ {

		arr = append(arr, x)
		x *= 2
	}

	for i, v := range arr {
		fmt.Printf("N[%d] = %d\n", i, v)
	}
}
