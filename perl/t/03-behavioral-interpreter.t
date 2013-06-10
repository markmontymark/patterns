use v5.016;
use strict;
use warnings;
use Test::More tests => 6;


use Patterns::Behavioral::Interpreter;

###BEGIN {*Patterns::Behavioral::Interpreter:: = *Patterns::Behavioral::Interpreter::}
#my $n = Patterns::Behavioral::Interpreter::DvdActorExpression->new();
#say "n $n";

my $ctx = new Patterns::Behavioral::Interpreter::DvdInterpreterContext();
$ctx->addTitle("Caddy Shack");
$ctx->addTitle("Training Day");
$ctx->addTitle("Hamlet");

$ctx->addActor("Ethan Hawke");
$ctx->addActor("Denzel Washington");

$ctx->addTitleAndActor( new Patterns::Behavioral::Interpreter::TitleAndActor("Hamlet", "Ethan Hawke"));
$ctx->addTitleAndActor( new Patterns::Behavioral::Interpreter::TitleAndActor("Training Day", "Ethan Hawke"));
$ctx->addTitleAndActor( new Patterns::Behavioral::Interpreter::TitleAndActor("Caddy Shack", "Ethan Hawke"));
$ctx->addTitleAndActor( new Patterns::Behavioral::Interpreter::TitleAndActor("Training Day", "Denzel Washington"));

my $client = new Patterns::Behavioral::Interpreter::DvdInterpreterClient( $ctx );

say(
	"interpreting show actor: " . 
	$client->interpret( "show actor"));
say(
	"interpreting show actor for title : " . 
	$client->interpret( "show actor for title "));
say(
	"interpreting show title: " . 
	$client->interpret( "show title")); 
say(
	"interpreting show title for actor : " . 
	$client->interpret( "show title for actor "));



done_testing();
