<?

require_once '../src/Behavioral/Visitor/AbstractTitleInfo.php';
require_once '../src/Behavioral/Visitor/TitleBlurbVisitor.php';
require_once '../src/Behavioral/Visitor/TitleLongBlurbVisitor.php';
require_once '../src/Behavioral/Visitor/TitleShortBlurbVisitor.php';

class Behavioral_Visitor extends PHPUnit_Framework_TestCase
{
	public function test()
	{
		$bladeRunner = new DvdInfo("Blade Runner", "Harrison Ford", '1');
		$electricSheep = new BookInfo("Do Androids Dream of Electric Sheep?", "Phillip K. Dick");
		$sheepRaider = new GameInfo("Sheep Raider");

		$titleLongBlurbVisitor = new TitleLongBlurbVisitor();

		$bladeRunner->accept($titleLongBlurbVisitor);
		$this->assertEquals($titleLongBlurbVisitor->getTitleBlurb(),'LB-DVD: Blade Runner, starring Harrison Ford, region: 1','Blade runner long blurb');

		$electricSheep->accept($titleLongBlurbVisitor);
		$this->assertEquals($titleLongBlurbVisitor->getTitleBlurb(),'LB-Book: Do Androids Dream of Electric Sheep?, Author: Phillip K. Dick','Electric sheep long blurb');

		$sheepRaider->accept($titleLongBlurbVisitor);
		$this->assertEquals($titleLongBlurbVisitor->getTitleBlurb(),'LB-Game: Sheep Raider','Sheep raider long blurb');


		$titleShortBlurbVisitor = new TitleShortBlurbVisitor();

		$bladeRunner->accept($titleShortBlurbVisitor);
		$this->assertEquals($titleShortBlurbVisitor->getTitleBlurb(),'SB-DVD: Blade Runner','Blade runner short blurb');

		$electricSheep->accept($titleShortBlurbVisitor);
		$this->assertEquals($titleShortBlurbVisitor->getTitleBlurb(),'SB-Book: Do Androids Dream of Electric Sheep?','Electric sheep short blurb');

		$sheepRaider->accept($titleShortBlurbVisitor);
		$this->assertEquals($titleShortBlurbVisitor->getTitleBlurb(),'SB-Game: Sheep Raider','Sheep raider short blurb');

	}
}
