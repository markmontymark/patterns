use Patterns::Behavioral::Chain_Of_Responsibility::TopTitle;

class DvdCategory is TopTitle {

	has Str $.category is rw;
	has Str $.topCategoryTitle is rw;

#	method new(Str $category )
#	{	
#		return self.bless( *, :$category );
#	}


	method getTopTitle { 
		if $.topCategoryTitle.defined {
			return $.topCategoryTitle;
		}
	}

	method getAllCategories { return $.category }

	method getTopCategoryTitle { return $.topCategoryTitle }
	method setTopCategoryTitle(Str $tcc ) { $.topCategoryTitle = $tcc }

	method getCategory { return $.category } 
	method setCategory(Str $cat ) { $.category = $cat }


}
