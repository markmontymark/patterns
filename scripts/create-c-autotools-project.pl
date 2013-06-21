#!perl

=head1 NAME

create-c-project.pl - create a C library or program project from scratch 
including a simple, Hello World implementation

=head1 SYNOPSIS

After going through the excellent Autotools tutorial at http://www.lrde.epita.fr/~adl/autotools.html 
I figured I wanted to automate creating the configure.ac and Makefile.am files as much as possible 
so my feeble brain didn't have to remember so much.  Ever get the experience of intaking so much 
information you feel it leaking out and spilling over?  So, I've tried to save the relevant (for me) 
parts the first time through for the two common tasks I have: 

 1) create an executable and  
 2) create a library project that reuses code from my executables


=head1 EXAMPLES

Create a bare bones executable
'simple-bin' isn't a special keyword, can be anything such as 
helloworld, simply-take-over-the-world, etc 

 $ perl create-c-project.pl simple-bin
 
 ...copious amounts of messages...
 
 $ ls -R simple-bin/
 amhello-1.0.tar.gz  stamp-h1  config.status  config.h.in     aclocal.m4
 src                 config.h  Makefile.in    configure       configure.ac
 config.log          Makefile  build-aux      autom4te.cache  Makefile.am
 
 simple-bin/autom4te.cache:
 output.0  output.1  requests  traces.0  traces.1
 
 simple-bin/build-aux:
 depcomp  install-sh  missing
 
 simple-bin/src:
 hello  main.c  main.o  Makefile  Makefile.am  Makefile.in



Create a bare bones library project called libsimple.
B<libsimple> isn't a special keyword, but B<I<IT MUST START WITH>> 'lib' to be 
recognized as a library project.  Can be anything like libhelloworld, 
libsimply-take-over-the-world, ... 

 $ perl create-c-project.pl libsimple
 
 ...copious amounts of messages...
 
 $ ls -R libsimple
 libsimple:
 aclocal.m4          autom4te.cache  config.h     config.log     configure     lib      m4        Makefile.am  src
 amhello-2.0.tar.gz  build-aux       config.h.in  config.status  configure.ac  libtool  Makefile  Makefile.in  stamp-h1
 
 libsimple/autom4te.cache:
 output.0  output.1  output.2  requests  traces.0  traces.1  traces.2
 
 libsimple/build-aux:
 config.guess  config.sub  depcomp  install-sh  ltmain.sh  missing
 
 libsimple/lib:
 libsay.la  Makefile  Makefile.am  Makefile.in  say.c  say.h  say.lo  say.o
 
 libsimple/m4:
 libtool.m4  lt~obsolete.m4  ltoptions.m4  ltsugar.m4  ltversion.m4
 
 libsimple/src:
 Makefile  Makefile.am  Makefile.in  saytest  saytest.c  saytest.o
 

=head1 ARGUMENTS

B<create-c-project.pl> can be run with 0 or 1 arguments to set the directory where you want to create your project.  If no arguments are given, then the project directory is set to '.', otherwise, the project directory is set to argument given.  It is intended that the project directory is a relative path, ie creating a project somewhere directly within the current working directory.  If you want it somewhere else, it's just as easy to run this locally then move that new project directory to wherever else you want.

=head1 DESCRIPTION

B<create-c-project.pl> will create a project directory, and then various configure.ac, Makefile.am, C header and source files to create a bare bones project.   The purpose is to ease setting up all the right configure.ac settings and Makefile.am files as these vary if you are creating a library project vs an executable project.  After the script creates the files, it will attempt to run various commands like autoreconf, configure, and make (maybe eventually gettextize).  

To check that the script set things up right and your new project was configured and built correctly, the last thing the script does is try to run a very simple executable that's (hopefully) been built from the commands above.  For an executable project, this simple test executable is src/hello.  For the library project, this simple test executable is src/saytest.


=head1 CAVEATS

There's probably lots of caveats that are going into this script that make it 'just run' for me but that might make it not just run for you.

I always create run the script with 1 argument to create a project directory in the current working directory, ie perl create-c-project.pl libsimple or perl create-c-project.pl simple-bin

Also, I'm running Ubuntu 12.04 with:

 gcc 4.7.0
 autoconf 2.68
 automake 1.11.3
 libtool 2.4.2

So, maybe if you have earlier versions this won't work out for you -- sorry, not an Autotools expert yet.

=head1 ACKNOWLEDGEMENTS

This script won't be possible without the excellent Autotools tutorial at http://www.lrde.epita.fr/~adl/autotools.html
That PDF helped tremendously, great work on that!!

=cut

use strict;
use warnings;

my($dir) = create_project_dir(@ARGV);
create_c_project($dir);
exit;

sub create_project_dir
{
   my($dir) = @_;
   $dir = '.' unless defined $dir;
   $dir =~ s/\/$//;
   if($dir ne '.')
   {
      mkdir $dir unless -d $dir;
      chdir $dir;
   }
   return $dir;
}


sub create_c_project
{
	my($dir) = @_;
	my($is_library) = $dir =~ /^lib/;


	mkdir 'src' unless -d 'src';

	if($is_library)
	{
		_library_project($dir);
	}
	else
	{
		_bin_project($dir);
	}

	run('autoreconf --install');
	#run('gettextize --copy --no-changelog');
  	#run('cp /usr/share/gettext/gettext.h src/');
	#run('autoreconf --install') if $is_using_gettext;
 	run('./configure');
 	run('make');
 	run('make distcheck');

	run($is_library ? './src/saytest 123 345 567 789' : './src/hello');
}


sub create_file
{	
	my($filename,$content) = @_;
	open F,">$filename" || die "Cant create file, $filename, $!\n";
	print F $content;
	close F;
}

sub run
{
	my($cmd) = @_;
	print "$cmd\n";
	print `$cmd`;
}

sub _library_project
{
	my($dir) = @_;
	mkdir 'lib' unless -d 'lib';
	mkdir 'm4' unless -d 'm4';

	create_file('configure.ac','
AC_INIT([amhello], [2.0], [markmontymark@yahoo.com])
AC_CONFIG_AUX_DIR([build-aux])
AC_CONFIG_MACRO_DIR([m4])
AM_INIT_AUTOMAKE([foreign -Wall -Werror])
LT_INIT
AC_PROG_CC
AC_CONFIG_HEADERS([config.h])
AC_CONFIG_FILES([Makefile lib/Makefile src/Makefile])
AC_OUTPUT');

	create_file('lib/Makefile.am','
lib_LTLIBRARIES = libsay.la
libsay_la_SOURCES = say.c say.h
');

	create_file('lib/say.h','
#include <config.h>
#include <stdio.h>
#ifndef _LIBSAY_H_
#define _LIBSAY_H_

/* say header */
void say(char * msg);
void sayf(char * msg,FILE * fp);
#endif
');

	create_file('lib/say.c',q~
#include "say.h"
#include "stdio.h"
#include "string.h"
void say(char * msg)
{
	if(msg)
	{
		printf("%s",msg);
		if(*(msg+strlen(msg)) != '\n')
			printf("\n");
		return;
	}
	printf("\n");
}

void sayf(char * msg,FILE * fp)
{
	if(msg)
	{
		fprintf(fp,"%s",msg);
		if(*(msg+strlen(msg)) != '\n')
			fprintf(fp,"\n");
		return;
	}
	fprintf(fp,"\n");
}
~);

	create_file('src/Makefile.am','
AM_CPPFLAGS = -I$(srcdir)/../lib
bin_PROGRAMS = saytest
saytest_SOURCES = saytest.c
saytest_LDADD = ../lib/libsay.la
');

	create_file('src/saytest.c','
#include "say.h"

int main(int argc,char ** argv)
{
	int i = -1;
	while(++i < argc)
		say(argv[i]);

	sayf("done",stdout);
	return 0;
}
');

	create_file('Makefile.am','
SUBDIRS = lib src 
ACLOCAL_AMFLAGS = -I m4
');

}



sub _bin_project
{
	create_file('configure.ac','
AC_INIT([amhello], [1.0], [markmontymark@yahoo.com])
AC_CONFIG_AUX_DIR([build-aux])
AM_INIT_AUTOMAKE([foreign -Wall -Werror])
AC_PROG_CC
AC_CONFIG_HEADERS([config.h])
AC_CONFIG_FILES([Makefile src/Makefile])
AC_CONFIG_SRCDIR([src/main.c])
AC_OUTPUT');

	create_file('Makefile.am','
SUBDIRS=src');

	create_file('src/Makefile.am','
bin_PROGRAMS = hello
hello_SOURCES = main.c');


		create_file('src/main.c','
#include <config.h>
#include <stdio.h>

int
main(int argc, char ** argv)
{
	puts("Hello World!");
	puts("This is " PACKAGE_STRING " . " );
	return 0;
}');
}
