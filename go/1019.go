package main

import "fmt"

func main() {
	var n, h, m int
	fmt.Scanf("%d", &n)
	h = n / 3600
	n = n % 3600
	m = n / 60
	n = n % 60
	fmt.Printf("%d:%d:%d\n", h, m, n)
}
