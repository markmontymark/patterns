## //DvdReleaseByCategory - the subject
#//(the class which is observed)

use Patterns::Behavioral::Observer::DvdRelease;
use Patterns::Behavioral::Observer::DvdSubscriber;

class DvdReleaseByCategory {

	has $.categoryName;
	has DvdRelease @!releases;
	has DvdSubscriber @!subscribers;

	method new($categoryName )
	{
		return self.bless( * , :$categoryName );
	}
	
   
	method addSubscriber( DvdSubscriber $subscriber )
	{
		push @!subscribers,$subscriber;
	}
  
	method removeSubscriber( DvdSubscriber $subscriber) 
	{
      my $found = 0;
      my $foundI = -1;
      my $i = 0;
      for @!subscribers {
         if $subscriber === $_ {
            $foundI = $i;
            last;
         }
         $i += 1;
      }
      if $foundI != -1 {
         @!subscribers.splice($foundI,1);
			return 1;
      }
		return 0;
   }
   
	method newDvdRelease( DvdRelease $release )
	{
		push @!releases,$release;
		return self.notifySubscribersOfNewDvd($release);
	}
		
	method updateDvd( DvdRelease $release)
	{
		my $dvdUpdated = 0;
		for @!releases {
			if $release.serialNumber eq $_.serialNumber {
				$_.updateRelease($release); 
				$dvdUpdated = 1;
				last;
			}
		}
		if $dvdUpdated {
			self.notifySubscribersOfUpdate($release);
		} 
		else { 
			self.newDvdRelease($release);
		}
	}
		
	method notifySubscribersOfNewDvd( DvdRelease $release )
	{
		@!subscribers.map: { $_.newDvdRelease( $release, $!categoryName ) }
	}

	method notifySubscribersOfUpdate( DvdRelease $release )
	{
		@!subscribers.map: { $_.updateDvdRelease($release,$!categoryName)  }
	}

}
