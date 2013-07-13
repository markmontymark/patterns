<?

require_once 'src/Behavioral/Iterator/DvdList.php';
require_once 'src/Behavioral/Iterator/DvdListIterator.php';

class Behavioral_IteratorTest extends PHPUnit_Framework_TestCase
{
   public function test()
   {

		$movies = new DvdList;
		$movies->append("10 Things I Hate About You");
		$movies->append("Shakespeare In Love");
		$movies->append("O (2001)");
		$movies->append("American Pie 2");
		$movies->append("Scotland, PA.");
		$movies->append("Hamlet (2000)");


		$iterator = $movies->createIterator();
	
		$i = 1;	
		while (!$iterator->isDone()) 
		{
			//echo (var_export( $iterator->currentItem(), true ) . "\n");
			$iterator->next();  
			$i++;
		}
		$this->assertEquals( $i,6,"Iterator didn't loop forever");
				 
		$movies->remove("American Pie 2");
				 
		$iterator->first();       
		$i = 1;	
		while (!$iterator->isDone()) 
		{
			//say($iterator->currentItem());
			$iterator->next();  
			$i++;
		}       
		$this->assertEquals( $i, 5 ,"Iterator didn't loop forever after removing");
	}
}


