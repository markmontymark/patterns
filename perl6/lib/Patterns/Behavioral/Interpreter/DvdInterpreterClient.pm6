
#//// Original copy of this content taken from http://www.fluffycat.com/Java-Design-Patterns/ in 2010
#//// Original Author: Larry Truett
#//// Privacy Policy at http://www.fluffycat.com/Privacy-Policy/
#//Interpreter Overview
#//Define a macro language and syntax, parsing input into objects which perform the correct opertaions.
#//DvdInterpreterClient - the Client

use Patterns::Behavioral::Interpreter::DvdActorTitleExpression;
use Patterns::Behavioral::Interpreter::DvdActorExpression;
use Patterns::Behavioral::Interpreter::DvdTitleActorExpression;
use Patterns::Behavioral::Interpreter::DvdTitleExpression;
use Patterns::Behavioral::Interpreter::DvdInterpreterContext;

class DvdInterpreterClient {

	has DvdInterpreterContext $.ctx;


	#// expression syntax:
	#// show title | actor [for actor | title ]
	method interpret (Str $expr ) {

		my @result = ("Query Result: ");
			 
		my $mainQuery = ' ';
		my $subQuery = ' ';
		my $forUsed = 0;
		my $searchString;
		my $searchStarted = 0;
		my $searchEnded = 0;
      
		my @tokens = $expr.split: ' '; 
		for @tokens {
			unless $_ {
				next;
			}

			if $_ eq "show" {
				next; #//show in all queries, not really used
			}
			elsif  $_ eq "title" {
				if $mainQuery eq ' ' {
					$mainQuery = 'T';
				} 
				elsif (($subQuery eq ' ') && $forUsed) {
					$subQuery = 'T';
				} 
			} 
			elsif ($_ eq "actor") {
				if ($mainQuery eq ' ') {
					$mainQuery = 'A';
				} 
				elsif (($subQuery eq ' ') && $forUsed) {
					$subQuery = 'A';
				} 
			} 
			elsif ($_ eq "for") {
				$forUsed = 1;
			} 
			elsif (not defined $searchString) and ($subQuery ne ' ') and ($_ ~~ /^\</) {
				$searchString = $_;
				$searchStarted = 1;
				$searchEnded = 1 if $_ ~~ /\>$/;
			} 
			elsif $searchStarted == 1 and $searchEnded == 0  {
				$searchString = $searchString ~ ' ' ~ $_;
				$searchEnded = 1 if $_ ~~ /\>$/;
			}
		}

		if defined $searchString {
			$searchString = $searchString.subst(/ <[\<\>]> /, '', :g);
		}
			#//remove <>
			 
		my DvdAbstractExpression $abstractExpression;
			 
		if $mainQuery eq 'A' {
			$abstractExpression = ( $subQuery eq 'T' && defined $searchString) ??  DvdActorTitleExpression.new(title=>$searchString) !!  DvdActorExpression.new();
		}      
		elsif  $mainQuery eq 'T' {	
			$abstractExpression = ($subQuery eq 'A' && defined $searchString) ??  DvdTitleActorExpression.new(actor=>$searchString) !!  DvdTitleExpression.new();
		}
		else {
			return @result.join: '';
		} 
			 
		@result.push( $abstractExpression.interpret: $.ctx);
		return @result.join: '';
	}

}
