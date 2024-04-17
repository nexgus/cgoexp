package wraper

/*

#cgo CFLAGS: -I./inc
#cgo LDFLAGS: -L./lib -lexample -Wl,-rpath=./lib
#include "example.h"
#include <stdlib.h>

*/
import "C"
import "unsafe"

func CPrintMessage(msg string) {
	s := C.CString(msg)
	defer C.free(unsafe.Pointer(s))

	C.pass_string(s)
}

func CPrintStruct(foo *Foo) {
	C.pass_struct((*C.Foo)(unsafe.Pointer(foo)))
}
