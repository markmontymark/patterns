


require "tapper"
require "Structural/Composite"

extend Tapper


tinOfTeaBags = TinOfTeaBags.new("tin of tea bags");
teaBag1 = OneTeaBag.new("tea bag 1");
teaBag2 = OneTeaBag.new("tea bag 2");
test 'Test putting teaBag1 and teaBag2 in tin, first ' do
	assert_equal tinOfTeaBags.add(teaBag1) ?  "teaBag1 added successfully to tinOfTeaBags" : "teaBag1 not added successfully tinOfTeaBags", 'teaBag1 added successfully to tinOfTeaBags'
end

test 'Test putting teaBag1 and teaBag2 in tin, second ' do
	assert_equal tinOfTeaBags.add(teaBag2) ? "teaBag2 added successfully to tinOfTeaBags" : "teaBag2 not added successfully tinOfTeaBags", 'teaBag2 added successfully to tinOfTeaBags'
end


smallTinOfTeaBags = TinOfTeaBags.new("small tin of tea bags");
teaBag3 = OneTeaBag.new("tea bag 3");
test 'Test if teaBag3 added' do
	assert_equal smallTinOfTeaBags.add(teaBag3) ?  "teaBag3 added successfully to smallTinOfTeaBags" : "teaBag3 not added successfully to smallTinOfTeaBags",'teaBag3 added successfully to smallTinOfTeaBags'
end

test 'Test adding a tin of tea bags into another tin of tea bags' do
	assert_equal tinOfTeaBags.add(smallTinOfTeaBags) ?  "smallTinOfTeaBags added successfully to tinOfTeaBags" : "smallTinOfTeaBags not added successfully to tinOfTeaBags" ,'smallTinOfTeaBags added successfully to tinOfTeaBags'
end

test 'Test removing teaBag2 from tin' do
	assert_equal tinOfTeaBags.remove(teaBag2) ?  "teaBag2 successfully removed from tinOfTeaBags" :  "teaBag2 not successfully removed from tinOfTeaBags" ,"teaBag2 successfully removed from tinOfTeaBags"
end
done();

