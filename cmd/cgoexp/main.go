package main

import "cgoexp/pkg/wraper"

func main() {
	wraper.CPrintMessage("This is a message")
	wraper.CPrintStruct(&wraper.Foo{A: 1, B: 2})
}
