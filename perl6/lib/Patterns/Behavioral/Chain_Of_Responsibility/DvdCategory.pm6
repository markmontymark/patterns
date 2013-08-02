package Patterns::Behavioral::Chain_Of_Responsibility::DvdCategory;

use Moo;
with('Patterns::Behavioral::Chain_Of_Responsibility::TopTitle');

has category => ( is => 'rw');
has topCategoryTitle => ( is => 'rw');

sub BUILDARGS 
{
	my ( $class, @args ) = @_;
	unshift @args, 'category' if @args % 2 == 1;
	return { @args };
}

sub getTopTitle {
	my $self = shift; 
	return $self->topCategoryTitle; 
}
sub getAllCategories { 
	my $self = shift;
	return $self->category;
}
sub getTopCategoryTitle
{
	my $self = shift;
	$self->topCategoryTitle
}

sub setTopCategoryTitle
{
	my $self = shift;
	$self->topCategoryTitle(@_);
}

sub getCategory
{
	my $self = shift;
	$self->category
}

sub setCategory
{
	my $self = shift;
	$self->categoryTitle(@_);
}


1;
