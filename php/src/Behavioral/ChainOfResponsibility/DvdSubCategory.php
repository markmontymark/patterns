<?

require_once 'TopTitle.php';
require_once 'DvdCategory.php';


#//DvdSubCategory - the Middle Class in the Chain

class DvdSubCategory implements TopTitle
{

	private $parent;
	private $subCategory;
	private $topSubCategoryTitle;

	function __construct(DvdCategory $parent, $subCategory)
	{
		$this->parent = $parent;
		$this->subCategory = $subCategory;
	}

	function setSubCategory (string $sc)
	{
		$this->subCategory = $sc;
	}
	function getSubCategory ()
	{
		return $this->subCategory;
	}
	  
	function setCategory($c)
	{
		$this->parent->setCategory($c);
	}

	function getCategory()
	{
		return $this->parent->getCategory();
	}
		
	function setTopSubCategoryTitle($c)
	{
		$this->topSubCategoryTitle = $sc;
	}

	function getTopSubCategoryTitle()
	{
		return $this->topSubCategoryTitle;
	}

	function setTopCategoryTitle($tct)
	{
		$this->parent->topCategoryTitle($tct);
	}

	function getTopCategoryTitle()
	{
		return $this->parent->topCategoryTitle;
	}
	  
	  
	## interface subs 
	function getAllCategories()
	{
		return $this->getCategory() . '/' . $this->getSubCategory();
	}

	function getTopTitle()
	{
		if($this->getTopSubCategoryTitle())
			return $this->getTopSubCategoryTitle() ;
		//echo "no top title in Category/SubCategory " . $this->getAllCategories() . "\n"; 
		return $this->parent->getTopTitle();
	}

}
