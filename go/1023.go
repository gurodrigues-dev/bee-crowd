package main

import (
	"fmt"
	"math"
	"sort"
)

func main() {
	var n, cityN, x, y int
	var totC, totP float64

	var cons [][]int

	for {
		fmt.Scanf("%d", &n)

		if n == 0 {
			break
		}

		cityN += 1
		cons = [][]int{}
		totP = 0
		totC = 0

		for i := 0; i < n; i++ {
			fmt.Scanf("%d %d", &x, &y)
			cons = append(cons, []int{x, y, y / x})
			totP += float64(x)
			totC += float64(y)
		}

		sort.Slice(cons, func(i, j int) bool {
			return cons[i][2] < cons[j][2]
		})

		if cityN > 1 {
			fmt.Println()
		}

		fmt.Printf("Cidade# %d:\n", cityN)
		var output string
		for i, v := range cons {
			output += fmt.Sprintf("%d-%d", v[0], v[2])

			if i < len(cons)-1 {
				output += fmt.Sprintf(" ")
			}
		}
		fmt.Println(output)
		fmt.Printf("Consumo medio: %.2f m3.\n", math.Trunc(totC*100/totP)/100)
	}
}
