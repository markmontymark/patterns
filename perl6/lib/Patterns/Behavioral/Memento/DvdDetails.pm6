#//// Original copy of this content taken from http://www.fluffycat.com/Java-Design-Patterns/ in 2010
#//// Original Author: Larry Truett
#//// Privacy Policy at http://www.fluffycat.com/Privacy-Policy/
#//Java Design Patterns Memento
#//Memento (aka Token) Overview
#//One object stores another objects state.
#//DvdDetails - the Originator
#//(the class to be backed up)
#//Contains the inner class DvdMemento - the Memento

use Patterns::Behavioral::Memento::DvdMemento;

class DvdDetails
{

	has $.titleName is rw;
	has @.stars;
	has $.region is rw;
	has $.memento is rw;

	method new($titleName, @stars, $region )
	{
		self.bless( *,
			:$titleName,
			:@stars,
			:$region )
	}

	method addStar($star)
	{
		push @.stars, $star;
	}


	method starsAsString
	{
		@.stars.join: ', '
	}  

	method asState
	{
		my %state = {};
		%state{'titleName'} = $.titleName;
		%state{'region'} = $.region;
		#TODO Big Ol' TODO, without this join and the split below, getting reached  max recursion depth perl6 error (I'm sure it's my err, not theirs)
		%state{'stars'} = @.stars.join: "adsfasdfasdfasfdsafsadfsafdsafa";
		%state
	}
   
	method formatDvdDetails
	{
		return "DVD: " ~ $.titleName ~  ", starring: " ~ self.starsAsString() ~ ", encoding region: " ~ $.region ;
	}   
   
	#   //sets current state to what DvdMemento has
	method setDvdMemento(DvdMemento $memento)
	{
		@.stars = $memento.cache{'stars'}.split: "adsfasdfasdfasfdsafsadfsafdsafa";
		$.region = $memento.cache{'region'};
		$.titleName = $memento.cache{'titleName'};
		#for $memento.cache.kv -> $k,$v
		#{
			#self{$k} = $v;
		#}
	}

	#//save current state of DvdDetails in a DvdMemento
	method createDvdMemento
	{
		my DvdMemento $mementoToReturn = DvdMemento.new();
		$mementoToReturn.setState(self.asState());
		$mementoToReturn
	}


}   
