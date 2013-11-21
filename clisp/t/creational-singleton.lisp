(load "src/creational/singleton/package.lisp")
(in-package :creational-singleton)

(lisp-unit:define-test creational-singleton-test
   (let
		(
			(firstSpoon (make-instance 'spoon-singleton))
			(secondSpoon (make-instance 'spoon-singleton)))
		(lisp-unit:assert-equal firstSpoon secondSpoon)
		(use-spoon secondSpoon)
		(return-spoon firstSpoon)
		(use-spoon secondSpoon)
	))

(lisp-unit:write-tap (lisp-unit:run-tests :all))

