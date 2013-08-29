//Iterator - testing the iterator

package test.Behavioral;

import static org.junit.Assert.assertEquals;

import org.junit.Test;
import org.junit.Ignore;
import org.junit.runner.RunWith;
import org.junit.runners.JUnit4;

import Behavioral.Iterator.*;


public class Iterator {            

	@Test    
   public void ite() {

		
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
		org.junit.Assert.assertEquals("First iteration", 
			6,
			a_num_iterations
		);
       
      fiveShakespeareMovies.delete("American Pie 2");
       
      fiveShakespeareIterator.first();       
		int b_num_iterations = 0;
      while (!fiveShakespeareIterator.isDone()) {
			b_num_iterations++;
           fiveShakespeareIterator.next();  
      }       
		org.junit.Assert.assertEquals("Second iteration", 
			(a_num_iterations-1),
			b_num_iterations
		);
		
   }
}      
