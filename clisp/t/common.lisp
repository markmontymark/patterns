(load "src/common/package.lisp")
(in-package :patterns-common)

(lisp-unit:define-test patterns-common-test
   (lisp-unit:assert-true (make-instance 'bostonclamchowder))
   (lisp-unit:assert-true (make-instance 'bostonfishchowder))
   (lisp-unit:assert-true (make-instance 'clamchowder))
   (lisp-unit:assert-true (make-instance 'chickensoup))
	(lisp-unit:assert-true (make-instance 'fishchowder))
	(lisp-unit:assert-true (make-instance 'honoluluclamchowder))
	(lisp-unit:assert-true (make-instance 'honolulufishchowder))
	(lisp-unit:assert-true (make-instance 'minnestrone))
	(lisp-unit:assert-true (make-instance 'pastafazul))
	(lisp-unit:assert-true (make-instance 'soup))
	(lisp-unit:assert-true (make-instance 'tofusoup))
	(lisp-unit:assert-true (make-instance 'vegetablesoup))
	
   (lisp-unit:assert-equal "QuahogChowder" (:name (make-instance 'bostonclamchowder)))
   (lisp-unit:assert-equal "ScrodFishChowder" (:name (make-instance 'bostonfishchowder)))
   (lisp-unit:assert-equal "ClamChowder" (:name (make-instance 'clamchowder)))
   (lisp-unit:assert-equal "ChickenSoup" (:name (make-instance 'chickensoup)))
	(lisp-unit:assert-equal "FishChowder" (:name (make-instance 'fishchowder)))
	(lisp-unit:assert-equal "PacificClamChowder" (:name (make-instance 'honoluluclamchowder)))
	(lisp-unit:assert-equal "OpakapakaFishChowder" (:name (make-instance 'honolulufishchowder)))
	(lisp-unit:assert-equal "Minnestrone" (:name (make-instance 'minnestrone)))
	(lisp-unit:assert-equal "Pasta Fazul" (:name (make-instance 'pastafazul)))
	(lisp-unit:assert-equal "Tofu Soup" (:name (make-instance 'tofusoup)))
	(lisp-unit:assert-equal "Vegetable Soup" (:name (make-instance 'vegetablesoup)))
	
)

(lisp-unit:write-tap (lisp-unit:run-tests :all))

