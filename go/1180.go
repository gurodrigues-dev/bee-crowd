package main

import "fmt"

func main() {
	var n, x, p, v int
	fmt.Scanf("%d", &n)
	fmt.Scanf("%d", &x)
	v = x
	for i := 1; i < n; i++ {
		fmt.Scanf("%d", &x)
		if x < v {
			v = x
			p = i
		}
	}

	fmt.Printf("Menor valor: %d\nPosicao: %d\n", v, p)
}
