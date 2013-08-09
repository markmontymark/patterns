
require "tapper"
require "Structural/Adapter"

extend Tapper


teaCup = TeaCup.new

teaBag = TeaBag.new
teaCup.steepTeaBag(teaBag)
test "Test that tea bag cup steeped tea" do
	assert teaBag.getTeaBagIsSteeped
end

looseLeafTea = LooseLeafTea.new
teaBall = TeaBall.new(looseLeafTea)
teaCup.steepTeaBag(teaBall)
test "Test that tea ball steeped teabag" do
	assert teaBall.getTeaBagIsSteeped
end

done
