package main

import "fmt"

func isPerfect(n int) bool {
	var sum int
	for i := 1; i < n; i++ {
		if sum > n {
			break
		}
		if n%i == 0 {
			sum += i
		}
	}

	return sum == n
}

func main() {
	var n, x int

	fmt.Scanf("%d", &n)

	for i := 0; i < n; i++ {
		fmt.Scanf("%d", &x)

		if isPerfect(x) {
			fmt.Printf("%d eh perfeito\n", x)
			continue
		}

		fmt.Printf("%d nao eh perfeito\n", x)
	}
}
