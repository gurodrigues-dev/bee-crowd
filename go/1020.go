package main

import "fmt"

func main() {
	var d, a, m int
	fmt.Scanf("%d", &d)
	a = d / 365
	d = d % 365
	m = d / 30
	d = d % 30
	fmt.Printf("%d ano(s)\n%d mes(es)\n%d dia(s)\n", a, m, d)
}
