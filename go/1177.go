package main

import "fmt"

func main() {
	var arr [1000]int
	var x, n int

	fmt.Scanf("%d", &x)
	for i := 0; i < 1000; i++ {
		arr[i] = n
		n += 1
		if n >= x {
			n = 0
		}
	}

	for i, v := range arr {
		fmt.Printf("N[%d] = %d\n", i, v)
	}
}
