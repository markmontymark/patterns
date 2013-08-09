

require "tapper"
require "Structural/Decorator"

extend Tapper


teaLeaves = TeaLeaves.new();
test 'Make a teaLeaves obj' do
	assert_kind_of TeaLeaves, teaLeaves
end

chaiDecorator = ChaiDecorator.new(teaLeaves)
test 'Make a chaiDecorator obj' do
	assert_kind_of ChaiDecorator, chaiDecorator
end

chaiDecorator.steepTea()
test 'Tea is steeped' do
	assert chaiDecorator.getTeaToMakeChai().getTeaIsSteeped()
end

done
