package main

import "fmt"

var family = []string{
	"Baby",
	"Mommy",
	"Daddy",
	"Grandma",
	"Grandpa",
	"Let's go hunt",
	"Run away",
	"Safe at last",
	"It's the end",
}

func main() {
	suffix := " shark"
	j := 0

	for _, item := range family {
		if j > 4 {
			suffix = ""
		}

		for i := 0; i < 3; i++ {
			println(fmt.Sprintf("%s%s, doo doo doo doo doo doo", item, suffix))
		}

		println(fmt.Sprintf("%s%s!", item, suffix))

		j++
	}
}
