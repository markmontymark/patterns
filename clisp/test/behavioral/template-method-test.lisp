(load "~/quicklisp/setup.lisp")
(ql:quickload :lisp-unit)
(load "src/behavioral/memento/package.lisp")
(in-package :behavioral-memento)

(lisp-unit:define-test behavioral-memento-test


 (let
   (

		TitleInfo bladeRunner = new DvdTitleInfo("Blade Runner", "Harrison Ford", '1'); 
		TitleInfo electricSheep = new BookTitleInfo("Do Androids Dream of Electric Sheep?", "Phillip K. Dick");        
		TitleInfo sheepRaider = new GameTitleInfo("Sheep Raider");

		(lisp-unit:assert-equal "Testing bladeRunner" ,   
			"DVD: Blade Runner, starring Harrison Ford, encoding region: 1",
			bladeRunner.ProcessTitleInfo()
		);
		(lisp-unit:assert-equal "Testing electricSheep" , 
			"Book: Do Androids Dream of Electric Sheep?, Author: Phillip K. Dick ",
			electricSheep.ProcessTitleInfo()
		);
		(lisp-unit:assert-equal "Testing sheepRaider" ,
			"Game: Sheep Raider ",
			sheepRaider.ProcessTitleInfo()
		);
   (lisp-unit:assert-equal
      ""
      ())
   )
)

(setq lisp-unit:*print-failures* t)
(setq lisp-unit:*print-errors* t)
(lisp-unit:run-tests)

