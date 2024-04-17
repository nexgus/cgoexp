#include <stdio.h>

typedef struct
{
	int a;
	int b;
} Foo;

void pass_string(char *s);
void pass_struct(Foo *in);
