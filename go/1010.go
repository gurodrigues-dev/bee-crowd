package main

import "fmt"

func main() {
	var n1, n2 int
	var q1, q2, v1, v2 float64
	fmt.Scanf("%d", &n1)
	fmt.Scanf("%f", &q1)
	fmt.Scanf("%f", &v1)
	fmt.Scanf("%d", &n2)
	fmt.Scanf("%f", &q2)
	fmt.Scanf("%f", &v2)
	fmt.Printf("VALOR A PAGAR: R$ %.2f\n", q1*v1+q2*v2)
}
