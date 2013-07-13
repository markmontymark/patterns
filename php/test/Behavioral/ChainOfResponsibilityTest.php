


<?

#//// Original copy of this content taken from http://www.fluffycat.com/Java-Design-Patterns/ in 2010
#//// Original Author: Larry Truett
#//// Privacy Policy at http://www.fluffycat.com/Privacy-Policy/
#//Chain of Responsibility Overview
#//A method called in one class will move up a class hierarchy until a method is found that can properly handle the call.

require_once 'src/Behavioral/ChainOfResponsibility/TopTitle.php';
require_once 'src/Behavioral/ChainOfResponsibility/DvdCategory.php';
require_once 'src/Behavioral/ChainOfResponsibility/DvdSubCategory.php';
require_once 'src/Behavioral/ChainOfResponsibility/DvdSubSubCategory.php';

class Behavioral_ChainOfResponsibilityTest extends PHPUnit_Framework_TestCase
{
   public function test()
   {

		$topTitle;
		$allCategories;

		$comedy = new DvdCategory("Comedy");
		$comedy->setTopCategoryTitle("Ghost World");

		$comedyChildrens = new DvdSubCategory($comedy, "Childrens");

		$comedyChildrensAquatic = new DvdSubSubCategory($comedyChildrens, "Aquatic");
		$comedyChildrensAquatic->setTopSubSubCategoryTitle( "Sponge Bob Squarepants");

		$topTitle = $comedy->getTopTitle();
		$allCategories = $comedy->getAllCategories();
		$this->assertEquals($topTitle,'Ghost World','DvdCateogry getTopTitle test');
		$this->assertEquals($allCategories,'Comedy','DvdCategory getAllCategories test');

		$topTitle = $comedyChildrens->getTopTitle();
		$allCategories = $comedyChildrens->getAllCategories();
		$this->assertEquals($topTitle,'Ghost World','DvdSubCateogry getTopTitle test');
		$this->assertEquals($allCategories,'Comedy/Childrens','DvdSubCategory getAllCategories test');

		$topTitle = $comedyChildrensAquatic->getTopTitle();
		$allCategories = $comedyChildrensAquatic->getAllCategories();
		$this->assertEquals($topTitle,'Sponge Bob Squarepants','DvdSubSubCateogry getTopTitle test');
		$this->assertEquals($allCategories,'Comedy/Childrens/Aquatic','DvdSubSubCategory getAllCategories test');
	}
}
