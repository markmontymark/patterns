


require "tapper"
require "Behavioral/Command"

extend Tapper



jayAndBob = DvdName.new("Jay and Silent Bob Strike Back");
spongeBob = DvdName.new("Sponge Bob Squarepants - Nautical Nonsense and Sponge Buddies");

bobStarsOn = DvdCommandNameStarsOn.new(jayAndBob);
bobStarsOff = DvdCommandNameStarsOff.new(jayAndBob);
spongeStarsOn = DvdCommandNameStarsOn.new(spongeBob);
spongeStarsOff = DvdCommandNameStarsOff.new(spongeBob);

test "create obj 1 " do
	assert_equal jayAndBob.to_s(), 'DVD: Jay and Silent Bob Strike Back'
end 

test "create obj 2  " do
	assert_equal spongeBob.to_s(), 'DVD: Sponge Bob Squarepants - Nautical Nonsense and Sponge Buddies'
end


bobStarsOn.execute();
spongeStarsOn.execute();

test "stars on both 1" do
	assert_equal jayAndBob.to_s(), 'DVD: Jay*and*Silent*Bob*Strike*Back'
end

test "stars on both 2" do
	assert_equal spongeBob.to_s(), 'DVD: Sponge*Bob*Squarepants*-*Nautical*Nonsense*and*Sponge*Buddies'
end

spongeStarsOff.execute();
test "turn off stars just on sponge 1" do
	assert_equal jayAndBob.to_s(), 'DVD: Jay*and*Silent*Bob*Strike*Back'
end

test "turn off stars just on sponge 2" do
	assert_equal spongeBob.to_s(), 'DVD: Sponge Bob Squarepants - Nautical Nonsense and Sponge Buddies'
end

done();
