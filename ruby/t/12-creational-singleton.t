

require "tapper"
require "Creational/Singleton"

extend Tapper


spoonForFirstPerson = SingleSpoon.instance

test "first spoon instance" do
	assert_equal spoonForFirstPerson.to_s, 'Behold the glorious single spoon!' 
end



SingleSpoon.instance.useSpoon()

spoonForSecondPerson = SingleSpoon.instance
test "Object to_s expected to be equal" do
	assert_equal spoonForFirstPerson, spoonForSecondPerson
end

test "Second spoon to_s should not have spoon available" do
	assert_equal spoonForSecondPerson.useSpoon(), 'Spoon in use'
end

spoonForFirstPerson.returnTheSpoon()       
test "First spoon returned ,second spoon to_s test" do
	assert_nil spoonForSecondPerson.useSpoon(), 'The spoon is available.'
end


done
