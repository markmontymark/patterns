

#//DvdSubSubCategory - the Lowest Class in the Chain

use Patterns::Behavioral::Chain_Of_Responsibility::TopTitle;
use Patterns::Behavioral::Chain_Of_Responsibility::DvdSubCategory;

class DvdSubSubCategory {

	has Str $.subSubCategory is rw;
	has Str $.topSubSubCategoryTitle is rw;
	has DvdSubCategory $.parent;

#	method new( DvdSubCategory $par, Str $subSubCategory )
#	{
#		return self.bless( *, :$par, :$subSubCategory );
#	}

	method setSubCategory (Str $sc )
	{
			$.parent.setSubCategory($sc)
	}

	method getSubCategory 
	{
			return $.parent.getSubCategory()
	}

	method setSubSubCategory (Str $ssc)
	{
			$.subSubCategory = $ssc
	}

	method getSubSubCategory 
	{
			$.subSubCategory()
	}

	method setCategory(Str $c) {
			$.parent.setCategory($c);
	}

	method getCategory {
			$.parent.getCategory()
	}

	method setTopSubSubCategoryTitle(Str $tssct )
	{
			$.topSubSubCategoryTitle = $tssct 
	}

	method getTopSubSubCategoryTitle
	{
			$.topSubSubCategoryTitle()
	}

	method setTopSubCategoryTitle (Str $tsct)
	{
			$.parent.setTopSubCategoryTitle($tsct);
	}

	method getTopSubCategoryTitle 
	{
			$.parent.getTopSubCategoryTitle()
	}

	method setTopCategoryTitle(Str $tct)
	{
			$.parent.setTopCategoryTitle($tct);
	}

	method getTopCategoryTitle 
	{
			$.parent.getTopCategoryTitle()
	}

	# interface methods
	method getTopTitle 
	{
		return $.topSubSubCategoryTitle() if $.topSubSubCategoryTitle.defined;
		say 'no top title in Category/SubCategory/SubSubCategory ' ~  self.getAllCategories();
		return $.parent.getTopTitle()
	}

	method getAllCategories 
	{
			[self.getCategory() , self.getSubCategory() , self.getSubSubCategory()].join('/')
	}

   

}
