
#//// Original copy of this content taken from http://www.fluffycat.com/Java-Design-Patterns/ in 2010
#//// Original Author: Larry Truett
#//// Privacy Policy at http://www.fluffycat.com/Privacy-Policy/
#//Interpreter Overview
#//Define a macro language and syntax, parsing input into objects which perform the correct opertaions.
#//DvdInterpreterClient.java - the Client

package Patterns::Behavioral::Interpreter::DvdInterpreterClient;
use Moo;
has ctx => (is => 'ro' );

sub BUILDARGS
{
	my($class,$ctx) = @_;
	{ ctx => $ctx }
}


#// expression syntax:
#// show title | actor [for actor | title ]
sub interpret 
{
	my ($self, $expression ) = @_;

   my @result = ("Query Result: ");
       
	my $mainQuery = ' ';
	my $subQuery = ' ';
	my $forUsed = 0;
	my $searchString = undef;
	my $searchStarted = 0;
	my $searchEnded = 0;
       
	for my $currentToken (split /\s+/,$expression) 
	{
		next unless $currentToken;

		if($currentToken eq "show") 
		{
			next; #//show in all queries, not really used
		}
		elsif ($currentToken eq "title") 
		{
			if ($mainQuery eq ' ') 
			{
				$mainQuery = 'T';
			} 
			elsif (($subQuery eq ' ') && $forUsed) 
			{
				$subQuery = 'T';
			} 
		} 
		elsif ($currentToken eq "actor") 
		{
			if ($mainQuery eq ' ') 
			{
				$mainQuery = 'A';
			} 
			elsif (($subQuery eq ' ') && $forUsed) 
			{
				$subQuery = 'A';
			} 
		} 
		elsif ($currentToken eq "for") 
		{
			$forUsed = 1;
		} 
		elsif ((not defined $searchString) && 
			($subQuery ne ' ') && 
			($currentToken =~ /^[<]/)) 
		{
			$searchString = $currentToken;
			$searchStarted = 1;
			$searchEnded = 1 if $currentToken =~ /[>]$/;
		} 
		elsif($searchStarted && 
			!$searchEnded) 
		{
			$searchString .= ' ' . $currentToken;
			$searchEnded = 1 if $currentToken =~ /[>]$/;
		}
	}

	$searchString =~ s/^.(.*).$/$1/ if $searchString;
		#//remove <>
       
	my $abstractExpression;
       
   if( $mainQuery eq 'A' )
	{
      $abstractExpression = ( $subQuery eq 'T' && defined $searchString) ?  
			new Patterns::Behavioral::Interpreter::DvdActorTitleExpression($searchString) :
			new Patterns::Behavioral::Interpreter::DvdActorExpression();
	}      
	elsif( $mainQuery eq 'T')
	{	
		$abstractExpression = ($subQuery eq 'A' && defined $searchString) ?
			new Patterns::Behavioral::Interpreter::DvdTitleActorExpression($searchString) :
			new Patterns::Behavioral::Interpreter::DvdTitleExpression();
	}
	else
	{
		return join '',@result;
   } 
       
   push @result, $abstractExpression->interpret($self->ctx);
   join '',@result
}

1;
