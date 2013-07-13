<?

#//DvdSubSubCategory - the Lowest Class in the Chain

require_once 'TopTitle.php';
require_once 'DvdCategory.php';
require_once 'DvdSubCategory.php';

class DvdSubSubCategory implements Toptitle
{

	private $parent ;
	private $subSubCategory;
	private $topSubSubCategoryTitle;

function __construct(DvdSubCategory $parent,$subSubCategory)
{
		$this->parent = $parent;
		$this->subSubCategory = $subSubCategory;
}


function setSubCategory ($c)
{
	$this->parent->setSubCategory($c);
}

function getSubCategory ()
{
	return $this->parent->getSubCategory();
}

function setSubSubCategory ($c)
{
	$this->subSubCategory($c);
}

function getSubSubCategory ()
{
	return $this->subSubCategory;
}


function setCategory ($c)
{
	$this->parent->setCategory($c);
}

function getCategory ()
{
	return $this->parent->getCategory();
}

function setTopSubSubCategoryTitle($c)
{
	$this->topSubSubCategoryTitle = $c;
}

function getTopSubSubCategoryTitle()
{
	return $this->topSubSubCategoryTitle;
}

function setTopSubCategoryTitle ($c)
{
	$this->parent->setTopSubCategoryTitle($c);
}

function getTopSubCategoryTitle ()
{
	return $this->parent->getTopSubCategoryTitle();
}

function setTopCategoryTitle($c)
{
	$this->parent->setTopCategoryTitle($c);
}

function getTopCategoryTitle ()
{
	return $this->parent->getTopCategoryTitle();
}

# interface methods
function getTopTitle ()
{
	if($this->getTopSubSubCategoryTitle())
		return $this->getTopSubSubCategoryTitle() ;
	echo("no top title in Category/SubCategory/SubSubCategory " .  $this->getAllCategories() . "\n");
	return $this->parent->getTopTitle();
}

function getAllCategories ()
{
	return $this->getCategory() . "/" . 
		$this->getSubCategory() . "/" .
		$this->getSubSubCategory();
}

   

}
