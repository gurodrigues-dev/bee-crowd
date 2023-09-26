package main

import "fmt"

func main() {
	var arr [20]int
	var x int

	for i := 19; i >= 0; i-- {
		fmt.Scanf("%d", &x)
		arr[i] = x
	}

	for i, v := range arr {
		fmt.Printf("N[%d] = %d\n", i, v)
	}
}
