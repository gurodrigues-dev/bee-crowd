package main

import "fmt"

func main() {
	var a, b int
	fmt.Scanf("%d", &a)
	fmt.Scanf("%d", &b)

	if a >= b {
		b += 24
	}

	fmt.Printf("O JOGO DUROU %d HORA(S)\n", b-a)
}
