static char rcsid[] = "$Id: assert.c 6 2007-01-22 00:45:22Z drhanson $";
#include "assert.h"
const Except_T Assert_Failed = { "Assertion failed" };
void (assert)(int e) {
	assert(e);
}
