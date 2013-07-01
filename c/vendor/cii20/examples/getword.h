/* $Id: getword.h 6 2007-01-22 00:45:22Z drhanson $ */
#include <stdio.h>
extern int getword(FILE *fp, char *buf, int size,
	int first(int c), int rest(int c));
