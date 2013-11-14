(load "~/quicklisp/setup.lisp")
(ql:quickload :lisp-unit)
(load "src/behavioral/template_method/package.lisp")
(in-package :behavioral-template-method)

(lisp-unit:define-test behavioral-template_method-test
	(let
   ((bladeRunner (make-instance 'dvd-info :title "Blade Runner" :star "Harrison Ford" :region "1"))
	 (electricSheep (make-instance 'book-info :title "Do Androids Dream of Electric Sheep?" :author "Phillip K. Dick"))
	 (sheepRaider (make-instance 'game-info :title "Sheep Raider")))

	(lisp-unit:assert-equal 
		"Book: Do Androids Dream of Electric Sheep?, Author: Phillip K. Dick "
		(process-title-info electricSheep))

	(lisp-unit:assert-equal 
		"Game: Sheep Raider "
		(process-title-info sheepRaider))

	(lisp-unit:assert-equal 
		"DVD: Blade Runner, starring Harrison Ford, encoding region: 1"
		(process-title-info bladeRunner))
   )
)

(setq lisp-unit:*print-failures* t)
(setq lisp-unit:*print-errors* t)
(lisp-unit:run-tests)

