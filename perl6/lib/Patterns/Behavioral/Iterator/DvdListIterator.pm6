

#//DvdList - the Concrete Aggregate (with a Concrete Iterator inner class)

use Patterns::Behavioral::Iterator::IteratorInterface;

class DvdListIterator is IteratorInterface {

	has $!currentPosition;
	has DvdList $!list;

	method BUILD
	{
		$!currentPosition = 0;
		@!list = [];
	}
       
	method first 
	{
		$!currentPosition = 0;
	}
       
	method advance
	{
		$!currentPosition += 1 if $!currentPosition < @!list.titleCount;
	}
			 
	method isDone 
	{
		$!currentPosition >= @!.list->titleCount
	}
			 
	method currentItem
	{
		$self->list->titles->[ $self->currentPosition ]
	}

}

