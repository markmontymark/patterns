
require "tapper"
require "Creational/Prototype"

extend Tapper


prototypeFactory = PrototypeFactory.new( SoupSpoon.new, SaladFork.new)

spoon = prototypeFactory.makeSpoon()
forky = prototypeFactory.makeFork()

test "Testing with SoupSpoon and SaladFork" do
	assert_equal "Spoon: #{spoon.spoonName}, Fork: #{forky.forkName}" , 'Spoon: Soup Spoon, Fork: Salad Fork' 
end

prototypeFactory = PrototypeFactory.new( SaladSpoon.new, SaladFork.new)

spoon = prototypeFactory.makeSpoon()
forky = prototypeFactory.makeFork()

test "Testing with SaladSpoon and SaladFork" do
	assert_equal "Spoon: #{spoon.spoonName}, Fork: #{forky.forkName}", 'Spoon: Salad Spoon, Fork: Salad Fork'
end

done
