//TestTeaBagsComposite.java - testing the composite

package test.Structural;

import tap.*;
import Structural.Composite.*;



class TestTeaBagsComposite 
{

   public static void main(String[] args) 
	{
		Tapper tap = new Tapper();
		TeaBags tinOfTeaBags = new TinOfTeaBags("tin of tea bags");

		TeaBags teaBag1 = new OneTeaBag("tea bag 1");
		tap.test("The teaBag1 has " + teaBag1.countTeaBags() + " tea bags in it.");

		TeaBags teaBag2 = new OneTeaBag("tea bag 2");
		tap.test("The teaBag2 has " + teaBag2.countTeaBags() + " tea bags in it."); 

		tap.test( "Putting teaBag1 and teaBag2 in tinOfTeaBags", new TestCase(){public void test(){
			assert tinOfTeaBags.add(teaBag1);
			assert tinOfTeaBags.add(teaBag2);
		}});

		tap.test("TinOfTeaBags count after teabag1 and teabag2 adds", new TestCase(){public void test(){
			assert ("The tinOfTeaBags now has " + tinOfTeaBags.countTeaBags() + " tea bags in it.").equals("asdfadsf");
		}});


		TeaBags smallTinOfTeaBags = new TinOfTeaBags("small tin of tea bags");
		tap.test("The smallTinOfTeaBags has " + smallTinOfTeaBags.countTeaBags() + " tea bags in it.");

		TeaBags teaBag3 = new OneTeaBag("tea bag 3");
		tap.test("The teaBag3 has " + teaBag3.countTeaBags() + " tea bags in it.");
		tap.test("Putting teaBag3 in smallTinOfTeaBags", new TestCase(){public void test(){
			assert smallTinOfTeaBags.add(teaBag3);
		}});
		tap.test("The smallTinOfTeaBags now has " + smallTinOfTeaBags.countTeaBags() + " tea bags in it.");

		tap.test(
			"Putting smallTinOfTeaBags in tinOfTeaBags", new TestCase(){ public void test(){
			assert tinOfTeaBags.add(smallTinOfTeaBags);
		}});

		tap.test( "TinOfTeaBags count before removal ", new TestCase(){public void test(){
			assert ("The tinOfTeaBags now has " + tinOfTeaBags.countTeaBags() + " tea bags in it.").equals();
		}});

		tap.test("Removing teaBag2 from tinOfTeaBags", new TestCase(){public void(){
			assert tinOfTeaBags.remove(teaBag2);
		}});

		tap.test("TinOfTeaBags count after removal.", new TestCase(){public void test(){
			assert ("The tinOfTeaBags now has " + tinOfTeaBags.countTeaBags() + " tea bags in it.").equals("asdf");
		}});
   }
}      
