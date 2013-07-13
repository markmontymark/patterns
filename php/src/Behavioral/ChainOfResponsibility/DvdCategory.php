<?

require_once 'TopTitle.php';

class DvdCategory implements TopTitle
{

	var $category = NULL;
	var $categoryTitle = NULL;
	var $topCategoryTitle = NULL;

	function __construct( $category )
	{
		//unshift @args, 'category' if @args % 2 == 1;
		$this->setCategory( $category );
	}

	function getTopCategoryTitle() { return $this->topCategoryTitle;}
	function setTopCategoryTitle($tct) { $this->topCategoryTitle = $tct; }
	function getCategory() { return $this->category; }
	function setCategory( $c) { $this->category = $c; }
	function getCategoryTitle() { return $this->categoryTitle; }
	function setCategoryTitle( $c) { $this->categoryTitle = $c; }


	function getTopTitle() { return $this->getTopCategoryTitle(); }
	function getAllCategories() { return $this->getCategory(); }

}
