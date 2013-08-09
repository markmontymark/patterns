require "tapper"
require "Behavioral/Memento"

extend Tapper

stars = ["Guy Pearce"]
dvdDetails = DvdDetails.new("Memento", stars, '1') 

test "first format of dvd details" do
	assert_equal dvdDetails.formatDvdDetails, 'DVD: Memento, starring: Guy Pearce, encoding region: 1'
end

dvdMementoCaretaker = dvdDetails.createDvdMemento()

test "creating a dvdmemento" do
	assert dvdMementoCaretaker
end


#//oops - Cappuccino on the keyboard!
dvdDetails.addStar("edskdzkvdfb")  

test "second format of dvd details" do
	assert_equal dvdDetails.formatDvdDetails, 'DVD: Memento, starring: Guy Pearce, edskdzkvdfb, encoding region: 1'
end

dvdDetails.setDvdMemento(dvdMementoCaretaker)

#//back off changes
test "restored format details" do
	assert_equal dvdDetails.formatDvdDetails, 'DVD: Memento, starring: Guy Pearce, encoding region: 1'
end

done
