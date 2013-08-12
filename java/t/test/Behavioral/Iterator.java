//Iterator.java - testing the iterator

package test.Behavioral;

import tap.*;
import Behavioral.Iterator.*;


class Iterator {            
    
   public static void main(String[] args) {

		Tapper tap = new Tapper();
      DvdList fiveShakespeareMovies = new DvdList();
      fiveShakespeareMovies.append("10 Things I Hate About You");
      fiveShakespeareMovies.append("Shakespeare In Love");
      fiveShakespeareMovies.append("O (2001)");
      fiveShakespeareMovies.append("American Pie 2");
      fiveShakespeareMovies.append("Scotland, PA.");
      fiveShakespeareMovies.append("Hamlet (2000)");

      DvdListIterator fiveShakespeareIterator = fiveShakespeareMovies.createIterator();
		int a_num_iterations = 0;
      while (!fiveShakespeareIterator.isDone()) {
			a_num_iterations++;
           fiveShakespeareIterator.next();  
      }
		tap.test("First iteration", new TestCase(){public void test(){
			assert a_num_iterations == 6;
		}});
       
      fiveShakespeareMovies.delete("American Pie 2");
       
      fiveShakespeareIterator.first();       
		int b_num_iterations = 0;
      while (!fiveShakespeareIterator.isDone()) {
			b_num_iterations++;
           fiveShakespeareIterator.next();  
      }       
		tap.test("Second iteration", new TestCase(){public void test(){
			assert b_num_iterations == (a_num_iterations-1);
		}});
		tap.done();
   }
}      
