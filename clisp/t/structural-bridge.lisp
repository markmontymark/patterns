(load "src/structural/bridge/package.lisp")
(in-package :structural-bridge)

(lisp-unit:define-test structural-bridge-test
   (let
		((flavors (list 
			(make-instance 'cherrysodaimp) 
			(make-instance 'grapesodaimp) 
			(make-instance 'orangesodaimp)))
		 (sizes (list 
			(make-instance 'mediumsoda) 
			(make-instance 'supersizesoda))))
	(lisp-unit:assert-equal 
		(concatenate 'string
			"...glug...Yummy Cherry Soda!...glug...Yummy Cherry Soda!"
			"...glug...Yummy Cherry Soda!...glug...Yummy Cherry Soda!...glug...Yummy Cherry Soda!...glug...Yummy Cherry Soda!...glug...Yummy Cherry Soda!"
			"...glug...Delicious Grape Soda!...glug...Delicious Grape Soda!"
			"...glug...Delicious Grape Soda!...glug...Delicious Grape Soda!...glug...Delicious Grape Soda!...glug...Delicious Grape Soda!...glug...Delicious Grape Soda!"
			"...glug...Citrusy Orange Soda!...glug...Citrusy Orange Soda!"
			"...glug...Citrusy Orange Soda!...glug...Citrusy Orange Soda!...glug...Citrusy Orange Soda!...glug...Citrusy Orange Soda!...glug...Citrusy Orange Soda!")
		(format nil "~{~A~^~}" (map 'list #'(lambda(f) (format nil "~{~A~^~}" (map 'list #'(lambda(s)(pour-soda s f)) sizes)) ) flavors))
	)))

(lisp-unit:write-tap (lisp-unit:run-tests :all))

