
require "tapper"
require "Behavioral/Strategy"

extend Tapper


allCapContext = DvdNameContext.new( 'C' )
theEndContext = DvdNameContext.new( 'E' )
spacesContext = DvdNameContext.new( 'S' )

names = [
	"Jay and Silent Bob Strike Back",
	"The Fast and the Furious",
	"The Others"
];

char = '*';

test "All caps context" do
	assert_equal allCapContext.formatDvdNames( names), 'JAY AND SILENT BOB STRIKE BACK,THE FAST AND THE FURIOUS,THE OTHERS'
end

test "The End context" do
	assert_equal theEndContext.formatDvdNames( names), 'Jay and Silent Bob Strike Back,Fast and the Furious, The,Others, The'
end

test "Space context" do
	assert_equal spacesContext.formatDvdNames( names, char ), 'Jay*and*Silent*Bob*Strike*Back,The*Fast*and*the*Furious,The*Others'
end

done
