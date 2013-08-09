
require "tapper"
require "Structural/Bridge"

extend Tapper

def testCherryPlatform 
	SodaImpSingleton.instance.setTheSodaImp(CherrySodaImp.new());
	mediumSoda = MediumSoda.new
	test "Testing medium cherry" do
		assert_equal mediumSoda.pourSoda(), '...glug... Yummy Cherry Soda! ...glug... Yummy Cherry Soda!'
	end

	superSizeSoda = SuperSizeSoda.new
	test "Testing supersize cherry" do
		assert_equal superSizeSoda.pourSoda(), '...glug... Yummy Cherry Soda! ...glug... Yummy Cherry Soda! ...glug... Yummy Cherry Soda! ...glug... Yummy Cherry Soda! ...glug... Yummy Cherry Soda!'
	end
end
   
def testGrapePlatform
	SodaImpSingleton.instance.setTheSodaImp(GrapeSodaImp.new)
	mediumSoda = MediumSoda.new
	test "Testing medium grape" do
		assert_equal mediumSoda.pourSoda(), '...glug... Delicious Grape Soda! ...glug... Delicious Grape Soda!'
	end
	superSizeSoda = SuperSizeSoda.new
	test "Testing supersize grape" do
		assert_equal superSizeSoda.pourSoda(), '...glug... Delicious Grape Soda! ...glug... Delicious Grape Soda! ...glug... Delicious Grape Soda! ...glug... Delicious Grape Soda! ...glug... Delicious Grape Soda!'
	end
end

def testOrangePlatform 
	SodaImpSingleton.instance.setTheSodaImp(OrangeSodaImp.new)
	mediumSoda = MediumSoda.new
	test "Testing medium orange" do
		assert_equal mediumSoda.pourSoda(), '...glug... Citrusy Orange Soda! ...glug... Citrusy Orange Soda!'
	end

	superSizeSoda = SuperSizeSoda.new
	test "Testing supersize orange" do
		assert_equal superSizeSoda.pourSoda(), '...glug... Citrusy Orange Soda! ...glug... Citrusy Orange Soda! ...glug... Citrusy Orange Soda! ...glug... Citrusy Orange Soda! ...glug... Citrusy Orange Soda!'
	end
end
    
testCherryPlatform
testGrapePlatform
testOrangePlatform

done
