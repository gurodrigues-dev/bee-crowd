package main

import "fmt"

func main() {
	var n, m uint32

	for {
		_, err := fmt.Scanf("%d %d", &n, &m)
		if err != nil {
			break
		}
		fmt.Println(n ^ m)
	}
}
