use v5.016;
use strict;
use warnings;
use Test::More tests => 5;


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

is($client->interpret( "show actor"),'Query Result: Ethan Hawke, Denzel Washington','Show actors test');
is($client->interpret( "show actor for title "), 'Query Result: Ethan Hawke, Denzel Washington', "interpreting show actor for title "); 
is($client->interpret( "show actor for title <Hamlet>"), 'Query Result: Ethan Hawke', "interpreting show actor for title <Hamlet>"); 
is($client->interpret( "show title"), 'Query Result: Caddy Shack, Training Day, Hamlet', "interpreting show title: ");
is($client->interpret( "show title for actor") , 'Query Result: Caddy Shack, Training Day, Hamlet', "interpreting show title for actor : " );

done_testing();
