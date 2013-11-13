(load "~/quicklisp/setup.lisp")
(ql:quickload :lisp-unit)
(load "src/behavioral/visitor/package.lisp")
(in-package :behavioral-visitor)

(lisp-unit:define-test behavioral-visitor-test

 (let
   (
		(bladeRunner (make-instance 'dvd-info :title "Blade Runner" :star "Harrison Ford" :region "1"))
		(electricSheep (make-instance 'book-info :title "Do Androids Dream of Electric Sheep?" :author "Phillip K. Dick"))
		(sheepRaider (make-instance 'game-info :title "Sheep Raider"))

		(long  (make-instance 'title-blurb-visitor-long))
		(short (make-instance 'title-blurb-visitor-short))
	)
		(accept bladeRunner long)
		(lisp-unit:assert-equal
			"LB-DVD: Blade Runner, starring Harrison Ford, encoding region: 1"
			(:blurb long))

		(accept electricSheep long)
		(lisp-unit:assert-equal 
			"LB-Book: Do Androids Dream of Electric Sheep?, Author: Phillip K. Dick"
			(:blurb long))

		(accept sheepRaider long)
		(lisp-unit:assert-equal 
			"LB-Game: Sheep Raider"
			(:blurb long))

		(accept bladeRunner short)
		(lisp-unit:assert-equal 
			"SB-DVD: Blade Runner"
			(:blurb  short))

		(accept electricSheep short)
		(lisp-unit:assert-equal 
			"SB-Book: Do Androids Dream of Electric Sheep?"
			(:blurb  short))

		(accept sheepRaider short)
		(lisp-unit:assert-equal  	
			"SB-Game: Sheep Raider"
			(:blurb  short))
))

(setq lisp-unit:*print-failures* t)
(setq lisp-unit:*print-errors* t)
(lisp-unit:run-tests)
