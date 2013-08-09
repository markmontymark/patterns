gem "minitest";
require "minitest/autorun"

use lib 'blib/lib';



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
#my $n = Patterns::Behavioral::Interpreter::DvdActorExpression.new();
#say "n $n";

my $ctx = DvdInterpreterContext.new();

$ctx.addTitleAndActor( TitleAndActor.new(title=>"Hamlet", actor=>"Ethan Hawke"));
$ctx.addTitleAndActor( TitleAndActor.new(title=>"Training Day", actor=>"Ethan Hawke"));
$ctx.addTitleAndActor( TitleAndActor.new(title=>"Caddy Shack", actor=>"Ethan Hawke"));
$ctx.addTitleAndActor( TitleAndActor.new(title=>"Training Day", actor=>"Denzel Washington"));

my $client = DvdInterpreterClient.new( ctx=>$ctx );

is($client.interpret( "show actor"),'Query Result: Denzel Washington, Ethan Hawke',$?FILE ~ ' Show actors test');
is($client.interpret( "show actor for title "), 'Query Result: Denzel Washington, Ethan Hawke', "$?FILE interpreting show actor for title "); 
is($client.interpret( "show actor for title <Hamlet>"), 'Query Result: Ethan Hawke', "$?FILE interpreting show actor for title <Hamlet>"); 
is($client.interpret( "show title"), 'Query Result: Caddy Shack, Hamlet, Training Day', "$?FILE interpreting show title: ");
is($client.interpret( "show title for actor <Ethan Hawke>") , 'Query Result: Caddy Shack, Hamlet, Training Day', "$?FILE interpreting show title for actor <Ethan Hawke>: " );
is($client.interpret( "show title for actor <Denzel Washington>") , 'Query Result: Training Day', "$?FILE interpreting show title for actor <Denzel Washington>: " );
is($client.interpret( "show title for actor <Bogus>") , 'Query Result: ', "$?FILE interpreting show title for unknown actor <Bogus>: " );

done();
