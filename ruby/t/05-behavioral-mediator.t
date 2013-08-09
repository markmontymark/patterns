require "tapper"
require "Behavioral/Mediator"

extend Tapper

dvdMediator = DvdMediator.new

dvdLower = DvdLowercaseTitle.new("Mulholland Dr.",dvdMediator)
dvdUp = DvdUppercaseTitle.new(dvdLower, dvdMediator)


test "Lowercase LC title : #{dvdLower.lowercasetitle}" do
	assert_equal dvdLower.lowercasetitle ,'mulholland dr.'
end

test "Lowercase super title :" do
	assert_equal dvdLower.getTitle() ,'Mulholland Dr.'
end


test "Upcase UC title :"  do
	assert_equal dvdUp.uppercasetitle ,'MULHOLLAND DR.'
end

test "Upcase super title :" do
	assert_equal dvdUp.getTitle() , 'Mulholland Dr.'
end

dvdLower.setSuperTitleLowercase()

test "Lowercase LC title :" do
	assert_equal dvdLower.lowercasetitle ,'mulholland dr.'
end

test "Lowercase super title :" do
	assert_equal dvdLower.getTitle() ,'mulholland dr.'
end

test "Upcase UC title :" do
	assert_equal dvdUp.uppercasetitle ,'MULHOLLAND DR.'
end

test "Upcase super title :" do 
	assert_equal dvdUp.getTitle() ,'mulholland dr.'
end

done
