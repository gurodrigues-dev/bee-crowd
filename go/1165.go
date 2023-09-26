package main

import "fmt"

func isPrime(n int) bool {
	for i := 2; i < n; i++ {
		if n%i == 0 {
			return false
		}
	}

	return true
}

func main() {
	var n, x int

	fmt.Scanf("%d", &n)

	for i := 0; i < n; i++ {
		fmt.Scanf("%d", &x)

		if isPrime(x) {
			fmt.Printf("%d eh primo\n", x)
			continue
		}

		fmt.Printf("%d nao eh primo\n", x)
	}
}
