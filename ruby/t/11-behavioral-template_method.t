
require "tapper"
require "Behavioral/Template_Method"

extend Tapper


bladeRunner = 	DvdTitleInfo.new("Blade Runner", "Harrison Ford", 1)
electricSheep =BookTitleInfo.new("Do Androids Dream of Electric Sheep?", "Phillip K. Dick")
sheepRaider = 	GameTitleInfo.new("Sheep Raider")

test "dvd Testing bladeRunner   " do
	assert_equal bladeRunner.processTitleInfo, 	'DVD: Blade Runner, starring Harrison Ford, encoding region: 1'
end


test "book Testing electricSheep " do
	assert_equal electricSheep.processTitleInfo,	'Book: Do Androids Dream of Electric Sheep?, Author: Phillip K. Dick '
end


test "game Testing sheepRaider   " do
	assert_equal sheepRaider.processTitleInfo ,	'Game: Sheep Raider '
end

done
