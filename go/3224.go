package main

import "fmt"

func main() {
	var j, m string
	fmt.Scanf("%s", &j)
	fmt.Scanf("%s", &m)

	if len(j) >= len(m) {
		fmt.Printf("go\n")
		return
	}

	fmt.Printf("no\n")
}
