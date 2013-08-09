require "tapper"
require "Behavioral/State"

extend Tapper


ctx = DvdStateContext.new();

test "first state change" do
	assert_equal ctx.showName( "Sponge Bob Squarepants - Nautical Nonsense and Sponge Buddies"), 'Sponge*Bob Squarepants - Nautical Nonsense and Sponge Buddies'
end

test "second state change" do
	assert_equal ctx.showName( "Jay and Silent Bob Strike Back" ) , 'Jay*and Silent Bob Strike Back'
end

test "third state change" do
	assert_equal ctx.showName( "Buffy The Vampire Slayer Season 2"), 'Buffy!The Vampire Slayer Season 2'
end

test "fourth state change" do
	assert_equal ctx.showName( "The Sopranos Season 2"), 'The*Sopranos Season 2'
end

done
