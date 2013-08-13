//TestTeaBagsComposite.java - testing the composite

namespace Structural.Composite {

using tap;



class TestComposite 
{

   public static void Main()
	{
		Tapper tap = new Tapper();
		TeaBags tinOfTeaBags = new TinOfTeaBags("tin of tea bags");

		TeaBags teaBag1 = new OneTeaBag("tea bag 1");
		tap.test("Teabag1 count ",  teaBag1.countTeaBags() , 1 );

		TeaBags teaBag2 = new OneTeaBag("tea bag 2");
		tap.test("Teabag2 count ", teaBag2.countTeaBags() , 1 );

		tap.test( "TinOfTeaBags add teabag1 ", tinOfTeaBags.add(teaBag1), true);
		tap.test( "TinOfTeaBags add teabag2 ", tinOfTeaBags.add(teaBag2), true );

		tap.test("TinOfTeaBags count after teabag1 and teabag2 adds", 
			("The tinOfTeaBags now has " + tinOfTeaBags.countTeaBags() + " tea bags in it.") , ("The tinOfTeaBags now has 2 tea bags in it."));


		TeaBags smallTinOfTeaBags = new TinOfTeaBags("small tin of tea bags");
		tap.test("Small tin count ", smallTinOfTeaBags.countTeaBags() , 0 );

		TeaBags teaBag3 = new OneTeaBag("tea bag 3");
		tap.test("Putting teaBag3 in smallTinOfTeaBags", 
			smallTinOfTeaBags.add(teaBag3), true );
		tap.test("small tin count after 1 add ", smallTinOfTeaBags.countTeaBags() , 1 );

		tap.test( "Putting smallTinOfTeaBags in tinOfTeaBags", tinOfTeaBags.add(smallTinOfTeaBags), true );

		tap.test( "TinOfTeaBags count before removal ",
			("The tinOfTeaBags now has " + tinOfTeaBags.countTeaBags() + " tea bags in it.") , ("The tinOfTeaBags now has 3 tea bags in it."));

		tap.test("Removing teaBag2 from tinOfTeaBags",
			tinOfTeaBags.remove(teaBag2), true );

		tap.test("TinOfTeaBags count after removal.", 
			("The tinOfTeaBags now has " + tinOfTeaBags.countTeaBags() + " tea bags in it.") , ("The tinOfTeaBags now has 2 tea bags in it."));
		tap.done();
   }
}

}      
