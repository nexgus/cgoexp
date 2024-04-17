#include "example.h"

void pass_string(char *s)
{
	printf("%s\n", s);
}

void pass_struct(Foo *in)
{
	printf("[%d, %d]\n", in->a, in->b);
}
