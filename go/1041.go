package main

import "fmt"

func main() {
	var x, y float64
	fmt.Scanf("%f", &x)
	fmt.Scanf("%f", &y)

	if x == 0 && y == 0 {
		fmt.Printf("Origem\n")
		return
	}

	if x == 0 {
		fmt.Printf("Eixo Y\n")
		return
	}

	if y == 0 {
		fmt.Printf("Eixo X\n")
		return
	}

	if x > 0 && y > 0 {
		fmt.Printf("Q1\n")
		return
	}

	if x < 0 && y > 0 {
		fmt.Printf("Q2\n")
		return
	}

	if x < 0 && y < 0 {
		fmt.Printf("Q3\n")
		return
	}

	if x > 0 && y < 0 {
		fmt.Printf("Q4\n")
		return
	}
}
