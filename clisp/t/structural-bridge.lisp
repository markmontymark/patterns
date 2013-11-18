(load "src/structural/bridge/package.lisp")
(in-package :structural-bridge)

(defun test-a-flavor-w-sizes 
	(( flavor soda-imp) (expected-medium string ) (expected-supersize string )
	(set-the-sode-imp soda-imp-singleton flavor)
	(lisp-unit:assert-equal expected-medium (pour-soda (make-instance 'medium-soda')))
	(lisp-unit:assert-equal expected-supersize (pour-soda (make-instance 'supersize-soda'))))

(lisp-unit:define-test structural-bridge-cherry-test
   (let
		((flavor (make-instance 'cherry-soda-imp)))
   (test-a-flavor-w-sizes flavor 
		"Yummy Cherry Soda! Yummy Cherry Soda!"
		"Yummy Cherry Soda! Yummy Cherry Soda! Yummy Cherry Soda! Yummy Cherry Soda! Yummy Cherry Soda!")))

(lisp-unit:define-test structural-bridge-grape-test
   (let
		((flavor (make-instance 'grape-soda-imp)))
   (test-a-flavor-w-sizes flavor 
	"Yummy Grape Soda! Yummy Grape Soda!"
	"Yummy Grape Soda! Yummy Grape Soda! Yummy Grape Soda! Yummy Grape Soda! Yummy Grape Soda!")))

(lisp-unit:define-test structural-bridge-orange-test
   (let
		((flavor (make-instance 'grape-soda-imp)))
   (test-a-flavor-w-sizes flavor 
		"Yummy Orange Soda! Yummy Orange Soda!"
		"Yummy Orange Soda! Yummy Orange Soda! Yummy Orange Soda! Yummy Orange Soda! Yummy Orange Soda!")))

(lisp-unit:write-tap (lisp-unit:run-tests :all))

