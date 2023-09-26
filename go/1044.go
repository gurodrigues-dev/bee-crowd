package main

import "fmt"

func main() {
	var a, b int
	fmt.Scanf("%d", &a)
	fmt.Scanf("%d", &b)
	if a%b == 0 || b%a == 0 {
		fmt.Printf("Sao Multiplos\n")
		return
	}

	fmt.Printf("Nao sao Multiplos\n")
}
