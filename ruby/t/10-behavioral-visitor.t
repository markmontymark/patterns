
require "tapper"
require 'Behavioral/Visitor'

extend Tapper



bladeRunner = DvdInfo.new("Blade Runner", "Harrison Ford", '1')
electricSheep = BookInfo.new("Do Androids Dream of Electric Sheep?", "Phillip K. Dick")
sheepRaider = GameInfo.new("Sheep Raider")

titleLongBlurbVisitor = TitleLongBlurbVisitor.new

bladeRunner.accept(titleLongBlurbVisitor)
test "Blade runner long blurb" do
	assert_equal titleLongBlurbVisitor.titleBlurb,'LB-DVD: Blade Runner, starring Harrison Ford, region: 1'
end

electricSheep.accept(titleLongBlurbVisitor)
test "Electric sheep long blurb" do
	assert_equal titleLongBlurbVisitor.titleBlurb,'LB-Book: Do Androids Dream of Electric Sheep?, Author: Phillip K. Dick'
end

sheepRaider.accept(titleLongBlurbVisitor)
test "Sheep raider long blurb" do
	assert_equal titleLongBlurbVisitor.titleBlurb,'LB-Game: Sheep Raider'
end


titleShortBlurbVisitor = TitleShortBlurbVisitor.new

bladeRunner.accept(titleShortBlurbVisitor)
test "Blade runner short blurb" do
	assert_equal titleShortBlurbVisitor.titleBlurb,'SB-DVD: Blade Runner'
end

electricSheep.accept(titleShortBlurbVisitor)
test "Electric sheep short blurb" do
	assert_equal titleShortBlurbVisitor.titleBlurb,'SB-Book: Do Androids Dream of Electric Sheep?'
end

sheepRaider.accept(titleShortBlurbVisitor)
test "Sheep raider short blurb" do
	assert_equal titleShortBlurbVisitor.titleBlurb,'SB-Game: Sheep Raider'
end

done
