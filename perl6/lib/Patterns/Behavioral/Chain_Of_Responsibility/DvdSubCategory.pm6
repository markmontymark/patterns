#  DvdSubCategory - the Middle Class in the Chain

use Patterns::Behavioral::Chain_Of_Responsibility::TopTitle;
use Patterns::Behavioral::Chain_Of_Responsibility::DvdCategory;

class DvdSubCategory is TopTitle {


	has Str $.subCategory is rw;
	has Str $.topSubCategoryTitle is rw;
	has DvdCategory $.parent;


#	method new( DvdCategory $parent, Str $subCategory )
#	{
#		return self.bless(*,:$parent, :$subCategory);
#	}


	method setSubCategory (Str $sc )
	{
		$.subCategory = $sc
	}

	method getSubCategory 
	{
		return $.subCategory()
	}
  
	method setCategory (Str $c )
	{
		$.parent.setCategory($c);
	}

	method getCategory
	{
		return $.parent.getCategory()
	}
   
	method setTopSubCategoryTitle($tsct)
	{
		$.topSubCategoryTitle = $tsct
	}

	method getTopSubCategoryTitle
	{
		return $.topSubCategoryTitle()
	}

	method setTopCategoryTitle(Str $tct)
	{
		$.parent.topCategoryTitle  = $tct;
	}

	method getTopCategoryTitle
	{
		return $.parent.topCategoryTitle()
	}
  
  
	## interface subs 
	method getAllCategories
	{
		return self.getCategory() ~  '/' ~ self.getSubCategory()
	}

	method getTopTitle
	{
		return $.topSubCategoryTitle() if $.topSubCategoryTitle.defined;
		#say 'no top title in Category/SubCategory ' ~ self.getAllCategories() ; 
		return $.parent.getTopTitle();
	}

}
