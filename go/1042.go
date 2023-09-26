package main

import "fmt"

func sort(l [3]int) [3]int {
	for i := 0; i < len(l)-1; i++ {
		for j := 0; j < len(l)-i-1; j++ {
			if l[j] > l[j+1] {
				l[j], l[j+1] = l[j+1], l[j]
			}
		}
	}
	return l
}

func main() {
	var l, old [3]int
	fmt.Scanf("%d", &l[0])
	fmt.Scanf("%d", &l[1])
	fmt.Scanf("%d", &l[2])
	old = l
	l = sort(l)
	for i := 0; i < len(l); i++ {
		fmt.Printf("%d\n", l[i])
	}
	fmt.Printf("\n")
	for i := 0; i < len(old); i++ {
		fmt.Printf("%d\n", old[i])
	}
}
