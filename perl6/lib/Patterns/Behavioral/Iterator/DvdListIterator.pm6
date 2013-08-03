

#//DvdList - the Concrete Aggregate (with a Concrete Iterator inner class)

use Patterns::Behavioral::Iterator::IteratorInterface;
use Patterns::Behavioral::Iterator::DvdList;

class DvdListIterator is IteratorInterface {

	has $!currentPosition;
	has DvdList $.dvdList;


	method new( DvdList $dvdList, $currentPosition? )
	{
		return self.bless(*,	
			:currentPosition( defined $currentPosition ?? $currentPosition !! 0 ),
			:$dvdList );
	}

	method reset
	{
		$!currentPosition = 0;
	}
       
	method advance
	{
		$!currentPosition += 1 if $!currentPosition < $.dvdList.titles.elems;
	}
			 
	method isDone 
	{
		$!currentPosition >= $.dvdList.titles.elems
	}
			 
	method currentItem
	{
		$.dvdList.titles[ $!currentPosition ]
	}

}

