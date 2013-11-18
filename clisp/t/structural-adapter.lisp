(load "src/structural/adapter/package.lisp")
(in-package :structural-adapter)

(lisp-unit:define-test structural-adapter-test
   (let
	((tc (make-instance 'teacup))
	 (tb (make-instance 'teabag))
	 (llt (make-instance 'looseleaftea))
	 (tball))
	(steep-tea-bag tc tb)
	(lisp-unit:assert-equal t (:teabag-is-steeped tb))

	(setf tball (make-instance 'teaball :looseleaftea llt))
	(steep-tea-bag tc tball)

	(lisp-unit:assert-equal t (:teabag-is-steeped tball))
))
(lisp-unit:write-tap (lisp-unit:run-tests :all))

