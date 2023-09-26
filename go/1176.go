package main

import "fmt"

func fastFibonacci(N int) int {
	if N <= 1 {
		return N
	}

	a, b := 0, 1
	for i := 2; i <= N; i++ {
		a, b = b, a+b
	}
	return b
}

func main() {
	var n, x int

	fmt.Scanf("%d", &n)

	for i := 0; i < n; i++ {
		fmt.Scanf("%d", &x)
		fmt.Printf("Fib(%d) = %d\n", x, fastFibonacci(x))
	}
}
