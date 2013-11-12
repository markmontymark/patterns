(load "~/quicklisp/setup.lisp")
(ql:quickload :lisp-unit)
(load "src/behavioral/memento/package.lisp")
(in-package :behavioral-visitor)

(lisp-unit:define-test behavioral-visitor-test


 (let
   (
		AbstractTitleInfo bladeRunner = new DvdInfo("Blade Runner", "Harrison Ford", '1');
		AbstractTitleInfo electricSheep = new BookInfo("Do Androids Dream of Electric Sheep?", "Phillip K. Dick");
		AbstractTitleInfo sheepRaider = new GameInfo("Sheep Raider");

		TitleBlurbVisitor titleLongBlurbVisitor = new TitleLongBlurbVisitor();
     

		bladeRunner.accept(titleLongBlurbVisitor);
		(lisp-unit:assert-equal  	"Testing bladeRunner long  " , 
			"LB-DVD: Blade Runner, starring Harrison Ford, encoding region: 1",
			titleLongBlurbVisitor.getTitleBlurb()
		);


		electricSheep.accept(titleLongBlurbVisitor);
		(lisp-unit:assert-equal  	"Testing electricSheep long " , 
			"LB-Book: Do Androids Dream of Electric Sheep?, Author: Phillip K. Dick",
			titleLongBlurbVisitor.getTitleBlurb()
		);

		sheepRaider.accept(titleLongBlurbVisitor);
		(lisp-unit:assert-equal  	"Testing sheepRaider long " , 
			"LB-Game: Sheep Raider",
			titleLongBlurbVisitor.getTitleBlurb()
		);

		TitleBlurbVisitor titleShortBlurbVisitor = new TitleShortBlurbVisitor();

		bladeRunner.accept(titleShortBlurbVisitor);
		(lisp-unit:assert-equal  	"Testing bladerunner short " , 
			"SB-DVD: Blade Runner",
			titleShortBlurbVisitor.getTitleBlurb()
		);


		electricSheep.accept(titleShortBlurbVisitor);
		(lisp-unit:assert-equal  	"Testing electricSheep short " ,
			"SB-Book: Do Androids Dream of Electric Sheep?",
			titleShortBlurbVisitor.getTitleBlurb()
		);

		sheepRaider.accept(titleShortBlurbVisitor);
		(lisp-unit:assert-equal  	"Testing sheepRaider short  " , 
			"SB-Game: Sheep Raider"	,
			titleShortBlurbVisitor.getTitleBlurb()
   (lisp-unit:assert-equal
      ""
      ())
   )
)

(setq lisp-unit:*print-failures* t)
(setq lisp-unit:*print-errors* t)
(lisp-unit:run-tests)

		);
