package main

import "fmt"

func printAndClean(arr []int, t string) []int {
	for i, v := range arr {
		fmt.Printf("%s[%d] = %d\n", t, i, v)
	}

	return []int{}
}

func main() {
	var imp, par []int
	var n int

	for i := 0; i < 15; i++ {
		fmt.Scanf("%d", &n)

		if n%2 == 0 {
			par = append(par, n)
		} else {
			imp = append(imp, n)
		}

		if len(imp) == 5 {
			imp = printAndClean(imp, "impar")
		}

		if len(par) == 5 {
			par = printAndClean(par, "par")
		}
	}

	printAndClean(imp, "impar")
	printAndClean(par, "par")
}
