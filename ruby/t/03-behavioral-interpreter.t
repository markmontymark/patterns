require "tapper"
require 'Behavioral/Interpreter'

extend Tapper

ctx = DvdInterpreterContext.new();

ctx.addActor("Ethan Hawke");
ctx.addActor("Denzel Washington");

ctx.addTitle( "Hamlet");
ctx.addTitle( "Caddy Shack");
ctx.addTitle( "Training Day");

ctx.addTitleAndActor( TitleAndActor.new("Hamlet", "Ethan Hawke"));
ctx.addTitleAndActor( TitleAndActor.new("Training Day","Ethan Hawke"));
ctx.addTitleAndActor( TitleAndActor.new("Caddy Shack", "Ethan Hawke"));
ctx.addTitleAndActor( TitleAndActor.new("Training Day","Denzel Washington"));

client = DvdInterpreterClient.new( ctx );

test ' Show actors test' do
	assert_equal client.interpret( "show actor"),'Query Result: Denzel Washington, Ethan Hawke'
end


test "interpreting show actor for title " do
	assert_equal client.interpret( "show actor for title "), 'Query Result: '
end


test "interpreting show actor for title <Hamlet>" do
	assert_equal client.interpret( "show actor for title <Hamlet>"), 'Query Result: Ethan Hawke'
end


test "interpreting show title: " do
	assert_equal client.interpret( "show title"), 'Query Result: Caddy Shack, Hamlet, Training Day'
end


test "interpreting show title for actor <Ethan Hawke>: " do
	assert_equal client.interpret( "show title for actor <Ethan Hawke>") , 'Query Result: Caddy Shack, Hamlet, Training Day'
end


test "interpreting show title for actor <Denzel Washington>: " do
	assert_equal client.interpret( "show title for actor <Denzel Washington>") , 'Query Result: Training Day'
end


test "interpreting show title for unknown actor <Bogus>: " do
	assert_equal client.interpret( "show title for actor <Bogus>") , 'Query Result: '
end



done();
