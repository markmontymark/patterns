use v6;
use Test;


use lib 'blib/lib';
use lib 'blib/lib/Patterns/Behavioral/Interpreter';

use TitleAndActor;
use DvdAbstractExpression;
use DvdActorExpression;
use DvdActorTitleExpression;
use DvdTitleExpression;
use DvdTitleActorExpression;
use DvdInterpreterClient;
use DvdInterpreterContext;

###BEGIN {*Patterns::Behavioral::Interpreter:: = *Patterns::Behavioral::Interpreter::}
#my $n = Patterns::Behavioral::Interpreter::DvdActorExpression->new();
#say "n $n";

my $ctx = DvdInterpreterContext.new();
$ctx.addTitle("Caddy Shack");
$ctx.addTitle("Training Day");
$ctx.addTitle("Hamlet");

$ctx.addActor("Ethan Hawke");
$ctx.addActor("Denzel Washington");

$ctx.addTitleAndActor( TitleAndActor.new(title=>"Hamlet", actor=>"Ethan Hawke"));
$ctx.addTitleAndActor( TitleAndActor.new(title=>"Training Day", actor=>"Ethan Hawke"));
$ctx.addTitleAndActor( TitleAndActor.new(title=>"Caddy Shack", actor=>"Ethan Hawke"));
$ctx.addTitleAndActor( TitleAndActor.new(title=>"Training Day", actor=>"Denzel Washington"));

my $client = DvdInterpreterClient.new( ctx=>$ctx );

is($client.interpret( "show actor"),'Query Result: Ethan Hawke, Denzel Washington','Show actors test');
#is($client.interpret( "show actor for title "), 'Query Result: Ethan Hawke, Denzel Washington', "interpreting show actor for title "); 
is($client.interpret( "show actor for title <Hamlet>"), 'Query Result: Ethan Hawke', "interpreting show actor for title <Hamlet>"); 
is($client.interpret( "show title"), 'Query Result: Caddy Shack, Training Day, Hamlet', "interpreting show title: ");
is($client.interpret( "show title for actor <Ethan Hawke>") , 'Query Result: Caddy Shack, Training Day, Hamlet', "interpreting show title for actor <Ethan Hawke>: " );

done();
