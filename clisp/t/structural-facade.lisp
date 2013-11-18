(load "src/structural/facade/package.lisp")
(in-package :structural-facade)

(lisp-unit:define-test structural-facade-test
   (let
   ((cuppa-maker ('make-instance facade-cuppa-maker))
   (tea-cup))
	((setf tea-cup (make-a-cuppa cuppa-maker))
	(lisp-unit:assert-equal "A nice cuppa tea!" (to-string tea-cup)))))

(lisp-unit:write-tap (lisp-unit:run-tests :all))

