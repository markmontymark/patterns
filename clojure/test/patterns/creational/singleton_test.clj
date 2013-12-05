(load "src/creational/singleton/package.lisp")
(in-package :creational-singleton)

(lisp-unit:define-test creational-singleton-test
   (let
		(
			(firstSpoon (make-instance 'spoon))
			(secondSpoon (make-instance 'spoon)))

		(lisp-unit:assert-true  (available firstSpoon))
		(lisp-unit:assert-true  (available secondSpoon))

		(use-spoon firstSpoon)
		;(lisp-unit:assert-equal 
			;(get-spoon firstSpoon)
			;(get-spoon secondSpoon))

		(lisp-unit:assert-true  (available firstSpoon))
		(lisp-unit:assert-false (available secondSpoon))

		(return-spoon firstSpoon)
		(lisp-unit:assert-true (available firstSpoon))
		(lisp-unit:assert-true (available secondSpoon))

		(use-spoon secondSpoon)
		(lisp-unit:assert-false (available firstSpoon))
		(lisp-unit:assert-true  (available secondSpoon))
	))

(lisp-unit:write-tap (lisp-unit:run-tests :all))

