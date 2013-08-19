//TestTeaBagsComposite - testing the composite









func TestComposite 
{
	@Test
   public void main() 
	{
		
		TeaBags tinOfTeaBags = new TinOfTeaBags("tin of tea bags")

		TeaBags teaBag1 = new OneTeaBag("tea bag 1")
		TeaBags teaBag2 = new OneTeaBag("tea bag 2")

		asserts.Equals( t, "OneTeaBag count",
			"The teaBag2 has 1 tea bags in it.",
			"The teaBag2 has " + teaBag2.countTeaBags() + " tea bags in it.") 

		asserts.Equals( t,  "Putting teaBag1 in tinOfTeaBags", 
			true,
			tinOfTeaBags.add(teaBag1)
		)
		asserts.Equals( t,  "Putting teaBag2 in tinOfTeaBags", 
			true,
			tinOfTeaBags.add(teaBag2)
		)

		asserts.Equals( t, "TinOfTeaBags count after teabag1 and teabag2 adds", 
			("The tinOfTeaBags now has 2 tea bags in it."),
			("The tinOfTeaBags now has " + tinOfTeaBags.countTeaBags() + " tea bags in it.")
		)


		TeaBags smallTinOfTeaBags = new TinOfTeaBags("small tin of tea bags")
		asserts.Equals( t, 
			"The smallTinOfTeaBags has 0 tea bags in it.",
			("The smallTinOfTeaBags has " + smallTinOfTeaBags.countTeaBags() + " tea bags in it.")
		)

		TeaBags teaBag3 = new OneTeaBag("tea bag 3")
		asserts.Equals( t, "Putting teaBag3 in smallTinOfTeaBags", 
			true,
			smallTinOfTeaBags.add(teaBag3)
		)
		asserts.Equals( t, "Small tin count",
			"The smallTinOfTeaBags now has 1 tea bags in it.",
			"The smallTinOfTeaBags now has " + smallTinOfTeaBags.countTeaBags() + " tea bags in it.")

		asserts.Equals( t, 
			true,
			tinOfTeaBags.add(smallTinOfTeaBags)
		)

		asserts.Equals( t,  "TinOfTeaBags count before removal ", 
			"The tinOfTeaBags now has 3 tea bags in it.",
			"The tinOfTeaBags now has " + tinOfTeaBags.countTeaBags() + " tea bags in it."
		)

		asserts.Equals( t, "Removing teaBag2 from tinOfTeaBags", 
			true,
			tinOfTeaBags.remove(teaBag2)
		)

		asserts.Equals( t, "TinOfTeaBags count after removal.", 
			"The tinOfTeaBags now has 2 tea bags in it.",
			"The tinOfTeaBags now has " + tinOfTeaBags.countTeaBags() + " tea bags in it."
		)
   }
}  
