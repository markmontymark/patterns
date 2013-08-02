package Patterns::Behavioral::Chain_Of_Responsibility::DvdSubSubCategory;

#//DvdSubSubCategory - the Lowest Class in the Chain

use Moo;
with('Patterns::Behavioral::Chain_Of_Responsibility::TopTitle');
has subSubCategory => (is => 'rw');
has topSubSubCategoryTitle => (is => 'rw');
has parent => (
	is => 'ro', 
#	isa => 'Patterns::Behavioral::Chain_Of_Responsibility::DvdSubCategory');
);

sub BUILDARGS 
{
	my( $class, $parent, $subSubCategory) = @_;
	{
		subSubCategory => $subSubCategory,
		parent => $parent
	}
}


sub setSubCategory 
{
	my $self = shift;
	$self->parent->setSubCategory(@_);
}

sub getSubCategory 
{
	my $self = shift;
	$self->parent->getSubCategory
}

sub setSubSubCategory 
{
	my $self = shift;
	$self->subSubCategory(@_);
}

sub getSubSubCategory 
{
	my $self = shift;
	$self->subSubCategory
}


sub setCategory {
	my $self = shift;
	$self->parent->setCategory(@_);
}

sub getCategory {
	my $self = shift;
	$self->parent->getCategory
}

sub setTopSubSubCategoryTitle
{
	my $self = shift;
	$self->topSubSubCategoryTitle(@_);
}

sub getTopSubSubCategoryTitle
{
	my $self = shift;
	$self->topSubSubCategoryTitle
}

sub setTopSubCategoryTitle 
{
	my $self = shift;
	$self->parent->setTopSubCategoryTitle(@_);
}

sub getTopSubCategoryTitle 
{
	my $self = shift;
	$self->parent->getTopSubCategoryTitle
}

sub setTopCategoryTitle
{
	my $self = shift;
	$self->parent->setTopCategoryTitle(@_);
}

sub getTopCategoryTitle 
{
	my $self = shift;
	$self->parent->getTopCategoryTitle
}

# interface methods
sub getTopTitle 
{
	my $self = shift;
	return $self->getTopSubSubCategoryTitle if $self->getTopSubSubCategoryTitle;
	print "no top title in Category/SubCategory/SubSubCategory " .  $self->getAllCategories . "\n";
	$self->parent->getTopTitle
}

sub getAllCategories 
{
	my $self = shift;
	$self->getCategory . "/" . 
		$self->getSubCategory . "/" .
		$self->getSubSubCategory
}

   

1;
