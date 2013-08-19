
package iterator

import (
	"testing"
	"../../lib/asserts"
)

func TestIterator( t *testing.T ) {

	movies := NewDvdList()
	movies.append("10 Things I Hate About You")
	movies.append("Shakespeare In Love")
	movies.append("O (2001)")
	movies.append("American Pie 2")
	movies.append("Scotland, PA.")
	movies.append("Hamlet (2000)")

	fiveShakespeareIterator := movies.CreateIterator()
	a_num_iterations := 0
	for fiveShakespeareIterator.HasNext() {
		a_num_iterations++
		fiveShakespeareIterator.Next()  
	}
	asserts.IntEquals( t, "First iteration", 6, a_num_iterations)

	movies.delete("American Pie 2")

	fiveShakespeareIterator.First()       
	b_num_iterations := 0
	for fiveShakespeareIterator.HasNext() {
		b_num_iterations++
		fiveShakespeareIterator.Next()  
	}       
	asserts.IntEquals( t, "Second iteration", a_num_iterations - 1, b_num_iterations)
		
}
