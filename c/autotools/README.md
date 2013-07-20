Moving all autotools files here to get them out of my usual dev directories.

If you want to use autotools to build instead of scons, then you can cp -pr 
this dir to ../, which will get you your configure, m4 files at the top-level
and then also sprinkle in all the Makefile.am/.in files

