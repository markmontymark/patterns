#//TeaFlavorFactory - the Factory

use Patterns::Structural::Flyweight::TeaFlavor;

class TeaFlavorFactory {

	has TeaFlavor @.flavors;
	has Int $.teasMade is rw = 0;

	method getTeaFlavor( Str $flavor ) returns TeaFlavor
	{
		if $.teasMade > 0
		{
			for @.flavors
			{
				return $_ if $flavor eq $_.teaFlavor;
			}
		}
		@.flavors.push: TeaFlavor.new($flavor);
		$.teasMade += 1;
		return @.flavors[ $.teasMade - 1 ];
	}
   

}
