package main

import "fmt"

func main() {
	var n1, n2, n3, n4, m float64
	fmt.Scanf("%f", &n1)
	fmt.Scanf("%f", &n2)
	fmt.Scanf("%f", &n3)
	fmt.Scanf("%f", &n4)
	m = (n1*2 + n2*3 + n3*4 + n4*1) / 10
	fmt.Printf("Media: %.1f\n", m)
	if m >= 7 {
		fmt.Printf("Aluno aprovado.\n")
	} else if m < 5 {
		fmt.Printf("Aluno reprovado.\n")
	} else {
		fmt.Printf("Aluno em exame.\n")
		fmt.Scanf("%f", &n1)
		fmt.Printf("Nota do exame: %.1f\n", n1)
		m = (m + n1) / 2
		if m >= 5 {
			fmt.Printf("Aluno aprovado.\n")
		} else {
			fmt.Printf("Aluno reprovado.\n")
		}
		fmt.Printf("Media final: %.1f\n", m)
	}
}
