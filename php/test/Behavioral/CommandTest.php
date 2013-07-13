
<?

require_once 'src/Behavioral/Command/DvdName.php';
require_once 'src/Behavioral/Command/DvdCommandNameStarsOn.php';
require_once 'src/Behavioral/Command/DvdCommandNameStarsOff.php';

class Behavioral_CommandTest extends PHPUnit_Framework_TestCase
{
	function test()
	{
		$jayAndBob = new DvdName("Jay and Silent Bob Strike Back");
		$spongeBob = new DvdName("Sponge Bob Squarepants - Nautical Nonsense and Sponge Buddies");

		$bobStarsOn = new DvdCommandNameStarsOn($jayAndBob);
		$bobStarsOff = new DvdCommandNameStarsOff($jayAndBob);
		$spongeStarsOn = new DvdCommandNameStarsOn($spongeBob);
		$spongeStarsOff = new DvdCommandNameStarsOff($spongeBob);

		$this->assertEquals($jayAndBob->toString(),'DVD: Jay and Silent Bob Strike Back','test to string');
		$this->assertEquals($spongeBob->toString(),'DVD: Sponge Bob Squarepants - Nautical Nonsense and Sponge Buddies','test to string');


		$bobStarsOn->execute();
		$spongeStarsOn->execute();
		$this->assertEquals($jayAndBob->toString(),'DVD: Jay*and*Silent*Bob*Strike*Back','test to string');
		$this->assertEquals($spongeBob->toString(),'DVD: Sponge*Bob*Squarepants*-*Nautical*Nonsense*and*Sponge*Buddies','test to string');

		$spongeStarsOff->execute();
		$this->assertEquals($jayAndBob->toString(),'DVD: Jay*and*Silent*Bob*Strike*Back','test to string');
		$this->assertEquals($spongeBob->toString(),'DVD: Sponge Bob Squarepants - Nautical Nonsense and Sponge Buddies','test to string');
	}
}

