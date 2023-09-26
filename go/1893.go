package main

import (
	"fmt"
)

func main() {
	var n, m int

	fmt.Scanf("%d", &n)
	fmt.Scanf("%d", &m)

	if n >= 0 && m <= 2 {
		fmt.Println("nova")

	} else if m > n && m <= 96 {
		fmt.Println("crescente")

	} else if n >= m && m <= 96 {
		fmt.Println("minguante")

	} else {
		fmt.Println("cheia")
	}
}
