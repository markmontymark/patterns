(load "src/structural/flyweight/package.lisp")
(in-package :structural-flyweight)

(defun take-orders
	((factory tea-flavor-factory)
	 (flavor string) 
	 (table-no number))
	(incf orders-made)
   (setf (cdr (last flavors)) (cons (get-teaflavor factory flavor) nil))
   (setf (cdr (last tables))  (cons (make-instance 'tea-order-context :table table-no) nil)))


(lisp-unit:define-test structural-flyweight-test
   (let
   ((orders-made 0)
	 (flavors (list))
	 (tables  (list))
	 (factory (make-instance 'tea-flavor-factory)))

	((take-orders "chai"  2)    
	(take-orders "chai"  2)
	(take-orders "camomile"  1)
	(take-orders "camomile"  1)
	(take-orders "earl grey"  1)
	(take-orders "camomile"  897)
	(take-orders "chai"  97)
	(take-orders "chai"  97)
	(take-orders "camomile"  3)
	(take-orders "earl grey"  3)
	(take-orders "chai"  3)
	(take-orders "earl grey"  96)
	(take-orders "camomile"  552)
	(take-orders "chai"  121)
	(take-orders "earl grey"  121)
	
	(loop for i in 0 to orders-made do
		(serve-tea (subseq flavors i (+ i 1)) (subseq tables i (+ i 1))))

	(lisp-unit:assert-equal 3 (teas-made factory))

)))
(lisp-unit:write-tap (lisp-unit:run-tests :all))

