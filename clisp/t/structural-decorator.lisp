(load "src/structural/decorator/package.lisp")
(in-package :structural-decorator)

(lisp-unit:define-test structural-decorator-test
   (let
   ((tl (make-instance 'tealeaves))
	(chai (make-instance 'chaidecorator)))

	(lisp-unit:assert-equal nil (not tl))
	(lisp-unit:assert-equal nil (:tea-is-steeped tl))
	(lisp-unit:assert-equal nil (not chai))
	(setf (:ttmc chai) tl)
	(lisp-unit:assert-equal 
		"tea leaves are steeping, bay leaf is steeping, cinnamon stick is steeping, ginger is steeping, honey is steeping, soy milk is steeping, vanilla bean is steeping" 
		(steep-tea chai))
	(lisp-unit:assert-equal t (:tea-is-steeped (:ttmc chai)))
))
(lisp-unit:write-tap (lisp-unit:run-tests :all))

