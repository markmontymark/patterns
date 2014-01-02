
# //DvdCommandNameStarsOff- two of two Concrete Commands

use Patterns::Behavioral::Command::CommandAbstract;
use Patterns::Behavioral::Command::DvdName;

class DvdCommandNameStarsOff is CommandAbstract {

	has DvdName $.dvdName;

	method new (DvdName $dvdName)
	{
		return self.bless( :$dvdName );
	}

	method execute
	{
		$.dvdName.setNameStarsOff()
	}
}
