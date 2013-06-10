#//DvdTitleExpression.java - Three Of Four Terminal Expressions

package Patterns::Behavioral::Interpreter::DvdTitleExpression;
use Moo;
extends 'Patterns::Behavioral::Interpreter::DvdAbstractExpression';
has title => ( is => 'ro' );
sub BUILDARGS
{
   my($class,$title) = @_;
   {title  => $title }
}


sub interpret
{
	my($self,$ctx) = @_;
   my $titles = $ctx->getAllTitles;
	join ', ',@$titles
}

1;
