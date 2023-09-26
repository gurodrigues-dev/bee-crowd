package main

import (
	"fmt"
	"math"
)

func main() {
	var n, anos int
	var pa, pb, g1, g2 float64

	fmt.Scanf("%d", &n)

	for i := 0; i < n; i++ {
		fmt.Scanf("%f %f %f %f", &pa, &pb, &g1, &g2)

		anos = 0
		for {
			if anos > 100 || pa > pb {
				break
			}

			anos += 1
			pa = pa + math.Trunc(pa*(g1/100))
			pb = pb + math.Trunc(pb*(g2/100))
		}

		if anos > 100 {
			fmt.Println("Mais de 1 seculo.")
			continue
		}

		fmt.Printf("%d anos.\n", anos)

	}
}
