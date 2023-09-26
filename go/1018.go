package main

import "fmt"

func main() {
	var n int
	cedulas := [7]int{100, 50, 20, 10, 5, 2, 1}
	fmt.Scanf("%d", &n)
	fmt.Printf("%d\n", n)
	for _, c := range cedulas {
		fmt.Printf("%d nota(s) de R$ %d,00\n", n/c, c)
		n = n % c
	}
}
