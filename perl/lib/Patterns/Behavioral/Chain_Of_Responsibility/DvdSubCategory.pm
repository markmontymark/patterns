package Patterns::Behavioral::Chain_Of_Responsibility::DvdSubCategory;

#//DvdSubCategory.java - the Middle Class in the Chain

use Moo;
with('Patterns::Behavioral::Chain_Of_Responsibility::TopTitle');

has subCategory => ( is => 'rw');
has topSubCategoryTitle => ( is => 'rw');
has parent => ( is => 'ro', 
	#isa => 'Patterns::Behavioral::Chain_Of_Responsibility::DvdCategory', 
);

sub BUILDARGS 
{
my( $class, $parent, $subCategory) = @_;
return { 
	subCategory => $subCategory,
	parent => $parent,
};
};


#   
#   public DvdSubCategory(DvdCategory dvdCategory, String subCategory) {
#        this.setSubCategory(subCategory); 
#        this.parent = dvdCategory;
#   }    
   
sub setSubCategory 
{
	my $self = shift;
	$self->subCategory(@_);
}
sub getSubCategory 
{
	my $self = shift;
	$self->subCategory
}
  
sub setCategory
{
	my $self = shift;
	$self->parent->setCategory(@_);
}

sub getCategory
{
	my $self = shift;
	$self->parent->getCategory()
}
   
sub setTopSubCategoryTitle
{
	my $self = shift;
	$self->topSubCategoryTitle(@_);
}

sub getTopSubCategoryTitle
{
	my $self = shift;
	$self->topSubCategoryTitle
}

sub setTopCategoryTitle
{
	my $self = shift;
	$self->parent->topCategoryTitle(@_);
}

sub getTopCategoryTitle
{
	my $self = shift;
	$self->parent->topCategoryTitle
}
  
  
## interface subs 
sub getAllCategories
{
	my $self = shift;
	return $self->getCategory . "/" . $self->getSubCategory;
}

sub getTopTitle
{
	my $self = shift;
	return $self->getTopSubCategoryTitle if $self->getTopSubCategoryTitle;
	print "no top title in Category/SubCategory " . $self->getAllCategories . "\n"; 
	return $self->parent->getTopTitle;
}

1;
