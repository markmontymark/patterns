require "tapper"
require "Behavioral/Iterator"

extend Tapper


movies = DvdList.new();
movies.push("10 Things I Hate About You");
movies.push("Shakespeare In Love");
movies.push("O (2001)");
movies.push("American Pie 2");
movies.push("Scotland, PA.");
movies.push("Hamlet (2000)");

elems = movies.titleCount;

iterator = DvdListIterator.new( movies );
iterator.first();
i = 0;

until iterator.isDone() do
	i += 1
	iterator.next();  
end 

test "Iterator looped #{i} times" do
	assert_equal i, elems
end
       
movies.remove("American Pie 2");
iterator.first();

i = 0;
until iterator.isDone() do
	i += 1
	iterator.next()
end 

test "Iterator looped #{elems - 1} times" do
	assert_equal i, (elems - 1)
end


done
