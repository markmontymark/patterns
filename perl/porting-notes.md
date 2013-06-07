# Porting Notes

While porting original Java sources to Perl, some notes are in order as Perl does OOP differently than Java.

## Interfaces

I'm using CPAN's Moo to start off with, and upon tackling the first pattern, Behavioral - Chain Of Responsibility, I ran into a snag -- Perl doesn't have an 'interface' keyword like Java.

So, how to create something like a Java interface?  Here's what I'm doing for now:

### Interface class using Moo

    package MyInterface;
    use Moo::Role;
    sub methodA { ... }
    sub methodB { ... }

    package SomeImplemenation;
    use Moo; 
    with('MyInterface');

    ## if you don't implement methodA, then calling methodA halts the program with 'Unimplemented at MyInterface.pm, line 3'
    sub methodA { 
       my $self = shift;
       # do stuff
    }
    sub methodB { 
       my $self = shift;
       # do other stuff
    }

