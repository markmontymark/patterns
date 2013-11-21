(load "src/creational/prototype/package.lisp")
(in-package :creational-prototype)

(lisp-unit:define-test creational-prototype-test
   (let
		((prototype-factory-a (make-instance 'prototypefactory
			:spoon 'soupspoon
			:fork  'saladfork))

		 (prototype-factory-b (make-instance 'prototypefactory
			:spoon 'saladspoon
			:fork  'saladfork))
		 (spoon)
		 (fork)
		)
		(setf spoon (make-spoon prototype-factory-a))
		(setf fork  (make-fork  prototype-factory-a))
		(lisp-unit:assert-equal
			"Spoon: Soup Spoon, Fork: Salad Fork"
			(concatenate 'string "Spoon: " (:name spoon) ", Fork: " (:name fork)))

		(setf spoon (make-spoon prototype-factory-b))
		(setf fork  (make-fork  prototype-factory-b))
		(lisp-unit:assert-equal
			"Spoon: Salad Spoon, Fork: Salad Fork"
			(concatenate 'string "Spoon: " (:name spoon) ", Fork: " (:name fork)))
	))
	

(lisp-unit:write-tap (lisp-unit:run-tests :all))

