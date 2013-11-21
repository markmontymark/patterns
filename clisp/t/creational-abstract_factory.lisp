(load "src/common/package.lisp")
(load "src/creational/abstract_factory/package.lisp")
(in-package :creational-abstract-factory)

(defun MakeSoupOfTheDay (sf)
	(let
		((soups (list 
			(make-chickensoup sf)
			(make-clamchowder sf)
			(make-fishchowder sf)
			(make-minnestrone sf)
			(make-pastafazul sf)
			(make-tofusoup sf)
			(make-vegetablesoup sf))))
		(pop (subseq soups 1 2))))

(lisp-unit:define-test creational-abstract-factory-test
   (let
		((bsf (make-instance 'bostonsoupfactory))
		 (hsf (make-instance 'honolulusoupfactory))
		 (soup-du-jour))

		(setf soup-du-jour (MakeSoupOfTheDay bsf))
		(lisp-unit:assert-equal 
			"The Soup of the day in Boston is QuahogChowder"
			(concatenate 'string "The Soup of the day in " (:location bsf) " is " (:name soup-du-jour)))
	
		(setf soup-du-jour (MakeSoupOfTheDay hsf))
		(lisp-unit:assert-equal 
			"The Soup of the day in Honolulu is PacificClamChowder"
			(concatenate 'string "The Soup of the day in " (:location hsf) " is " (:name soup-du-jour)))
	))

(lisp-unit:write-tap (lisp-unit:run-tests :all))

