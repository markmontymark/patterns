(load "src/structural/decorator/package.lisp")
(in-package :structural-decorator)

(lisp-unit:define-test structural-decorator-test
   (let
   ((tealeaves (make-instance 'tealeaves))
	(chai-decorator (make-instance 'chaidecorator :tealeaves tealeaves)))
	(lisop-unit:assert-equal nil  (not chai-decorator))
	(steep-tea chai-decorator)
	(lisp-unit:assert-equal t (tea-is-steeped (:tea-to-make-chai chai-decorator)))
))
(lisp-unit:write-tap (lisp-unit:run-tests :all))

