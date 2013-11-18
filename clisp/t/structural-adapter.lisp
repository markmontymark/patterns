(load "src/structural/adapter/package.lisp")
(in-package :structural-adapter)

(lisp-unit:define-test structural-adapter-test
   (let
	((teacup (make-instance 'teacup))
	 (teabag (make-instance 'teabag))
	 (looseleaftea (make-instance 'looseleaftea))
	 (teaball))
	(steep-tea-bag teacup teabag)
	(lisp-unit:assert-equal t (:teabag-is-steeped teaBag))

	(setf teaball (make-instance 'teaball :looseleaftea looseLeafTea))
	(steep-tea-bag teacup teaball)

	(lisp-unit:assert-equal t (:teabag-is-steeped teaball))
))
(lisp-unit:write-tap (lisp-unit:run-tests :all))

