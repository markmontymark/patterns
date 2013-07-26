
#//TestTeaBagsComposite.java - testing the composite
define ['Structural/Composite/TinOfTeaBags',
'Structural/Composite/OneTeaBag'
],(
TinOfTeaBags,
OneTeaBag
) ->
	'use strict'
	describe 'Test Structural Adapter', ->
		it 'Creating tinOfTeaBags', ->
			tinOfTeaBags = new TinOfTeaBags("tin of tea bags")
			self.assertEqual("The tinOfTeaBags has #{ tinOfTeaBags.countTeaBags() } tea bags in it.", "The tinOfTeaBags has 0 tea bags in it.")
			teaBag1 = new OneTeaBag("tea bag 1")
			self.assertEqual("The teaBag1 has #{ teaBag1.countTeaBags() } tea bags in it.", "The teaBag1 has 1 tea bags in it.")
			teaBag2 = new OneTeaBag("tea bag 2")
			self.assertEqual("The teaBag2 has #{ teaBag2.countTeaBags() } tea bags in it.", "The teaBag2 has 1 tea bags in it.")
			self.assertEqual(tinOfTeaBags.add(teaBag1)).toBeTruthy()
			self.assertEqual(tinOfTeaBags.add(teaBag2)).toBeTruthy()
			self.assertEqual("The tinOfTeaBags now has #{ tinOfTeaBags.countTeaBags() } tea bags in it.", "The tinOfTeaBags now has 2 tea bags in it.")
			smallTinOfTeaBags = new TinOfTeaBags("small tin of tea bags")
			self.assertEqual("The smallTinOfTeaBags has #{smallTinOfTeaBags.countTeaBags() } tea bags in it.", "The smallTinOfTeaBags has 0 tea bags in it.")
			teaBag3 = new OneTeaBag("tea bag 3")
			self.assertEqual(smallTinOfTeaBags.add(teaBag3)).toBeTruthy()
			self.assertEqual("The smallTinOfTeaBags now has #{ smallTinOfTeaBags.countTeaBags() } tea bags in it.", "The smallTinOfTeaBags now has 1 tea bags in it.")
			self.assertEqual(tinOfTeaBags.add(smallTinOfTeaBags)).toBeTruthy()
			self.assertEqual("The tinOfTeaBags now has #{ tinOfTeaBags.countTeaBags() } tea bags in it.", "The tinOfTeaBags now has 3 tea bags in it.")
			self.assertEqual(tinOfTeaBags.remove(teaBag2)).toBeTruthy()
			self.assertEqual("The tinOfTeaBags now has #{tinOfTeaBags.countTeaBags() } tea bags in it.", "The tinOfTeaBags now has 2 tea bags in it.")


