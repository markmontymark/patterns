/* $Id: atom.h 6 2007-01-22 00:45:22Z drhanson $ */
#ifndef ATOM_INCLUDED
#define ATOM_INCLUDED
extern       int   Atom_length(const char *str);
extern const char *Atom_new   (const char *str, int len);
extern const char *Atom_string(const char *str);
extern const char *Atom_int   (long n);
#endif
