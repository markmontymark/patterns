define ['Behavioral/Visitor/DvdInfo',
'Behavioral/Visitor/BookInfo',
'Behavioral/Visitor/GameInfo',
'Behavioral/Visitor/TitleLongBlurbVisitor',
'Behavioral/Visitor/TitleShortBlurbVisitor'
],(
DvdInfo,
BookInfo,
GameInfo,
TitleLongBlurbVisitor,
TitleShortBlurbVisitor
) ->

	'use strict'

	describe 'Test Behavioral Visitor',->

		bladeRunner = new DvdInfo("Blade Runner", "Harrison Ford", '1')
		electricSheep = new BookInfo("Do Androids Dream of Electric Sheep?", "Phillip K. Dick")
		sheepRaider = new GameInfo("Sheep Raider")


		it "Long Blurbs:",->
			titleLongBlurbVisitor = new TitleLongBlurbVisitor()
			bladeRunner.accept(titleLongBlurbVisitor)
			expect("Testing bladeRunner   " + titleLongBlurbVisitor.getTitleBlurb()).toEqual( 'Testing bladeRunner   LB-DVD: Blade Runner, starring Harrison Ford, encoding region: 1')
			electricSheep.accept(titleLongBlurbVisitor)
			expect("Testing electricSheep " + titleLongBlurbVisitor.getTitleBlurb()).toEqual( 'Testing electricSheep LB-Book: Do Androids Dream of Electric Sheep?, Author: Phillip K. Dick')
			sheepRaider.accept(titleLongBlurbVisitor)
			expect("Testing sheepRaider   " + titleLongBlurbVisitor.getTitleBlurb()).toEqual( 'Testing sheepRaider   LB-Game: Sheep Raider')


		it "Short Blurbs:",->
			titleShortBlurbVisitor = new TitleShortBlurbVisitor()
			bladeRunner.accept(titleShortBlurbVisitor)
			expect("Testing bladeRunner   " + titleShortBlurbVisitor.getTitleBlurb()).toEqual("Testing bladeRunner   SB-DVD: Blade Runner")
			electricSheep.accept(titleShortBlurbVisitor)
			expect("Testing electricSheep " + titleShortBlurbVisitor.getTitleBlurb()).toEqual("Testing electricSheep SB-Book: Do Androids Dream of Electric Sheep?")
			sheepRaider.accept(titleShortBlurbVisitor)
			expect("Testing sheepRaider   " + titleShortBlurbVisitor.getTitleBlurb()).toEqual('Testing sheepRaider   SB-Game: Sheep Raider')
