#//DvdSubscriber - the observer

use Patterns::Behavioral::Observer::DvdRelease;

class DvdSubscriber {

	has $.name;

	method new($name)
	{
		return self.bless( :$name );
	} 
   
	method newDvdRelease( DvdRelease $release, Str $subscriberName )
	{
		return "Hello " ~ $.name ~ ", subscriber to the " ~ $subscriberName ~ " DVD release list.\n" ~
			"The new Dvd " ~ 
			$release.name ~ " will be released on " ~
			$release.releaseMonth ~ "/" ~ 
			$release.releaseDay ~ "/" ~ 
			$release.releaseYear ~ ".\n";
	}

	method updateDvdRelease( DvdRelease $release, Str $subscriptionListName) 
	{
		return "Hello " ~ $.name ~  ", subscriber to the " ~  $subscriptionListName ~  " DVD release list.\n" ~
			"The following DVDs release has been revised: " ~  
			$release.name ~ " will be released on " ~ 
			$release.releaseMonth ~ "/" ~  
			$release.releaseDay ~ "/" ~  
			$release.releaseYear ~ ".\n";
	}   
}

1;
