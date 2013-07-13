<?

require_once 'src/Behavioral/Mediator/DvdMediator.php';
require_once 'src/Behavioral/Mediator/DvdLowercaseTitle.php';
require_once 'src/Behavioral/Mediator/DvdUppercaseTitle.php';

class Behavioral_MediatorTest extends PHPUnit_Framework_TestCase
{
   public function test()
   {
		$dvdMediator = new DvdMediator();
		$dvdLower = new DvdLowercaseTitle("Mulholland Dr.", $dvdMediator);
		$dvdUp = new DvdUppercaseTitle($dvdLower, $dvdMediator);

		$this->assertEquals($dvdLower->lowercasetitle ,'mulholland dr.',"Lowercase LC title :" . $dvdLower->lowercasetitle);
		$this->assertEquals( $dvdLower->getTitle() ,'Mulholland Dr.',"Lowercase super title :");
		$this->assertEquals( $dvdUp->uppercasetitle ,'MULHOLLAND DR.',"Upcase UC title :" );
		$this->assertEquals( $dvdUp->getTitle() , 'Mulholland Dr.',"Upcase super title :");

		$dvdLower->setSuperTitleLowercase();

		$this->assertEquals( $dvdLower->lowercasetitle ,'mulholland dr.',"Lowercase LC title :");
		$this->assertEquals( $dvdLower->getTitle() ,'mulholland dr.',"Lowercase super title :");
		$this->assertEquals( $dvdUp->uppercasetitle ,'MULHOLLAND DR.',"Upcase UC title :");
		$this->assertEquals( $dvdUp->getTitle() ,'Mulholland Dr.',"Upcase super title :");

	}
}

