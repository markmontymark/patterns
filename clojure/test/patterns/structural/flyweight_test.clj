(ns patterns.structural.flyweight-test
  (:require
      [clojure.test :refer :all]
      [patterns.structural.flyweight :refer :all]
   ))

(deftest structural-flyweight-test
   (let
   [ orders-made 0
	 flavors []
	 tables  []
	 factory (make-teaflavorfactory)]

	(defn take-orders [flavor table-no]
		(let
			((latest-flavor (get-tea-flavor factory flavor))
			 (latest-ctx (make-instance 'teaordercontext :table table-no))
			)
			(incf orders-made)
			(if flavors
				(push (car latest-flavor) (cdr (last flavors)))
				(setf flavors latest-flavor))
			(if tables
				(push latest-ctx (cdr (last tables)))
				(setf tables (list latest-ctx)))
	))

	(defn serve-em [flavors tables]
		(when (and flavors tables) 
			(serve-tea (car flavors) (car tables))
			(serve-em (cdr flavors) (cdr tables))
		))

	(take-orders "chai"  2)
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

	(serve-em flavors tables)	

	(testing "" (is (= 3 (:teas-made factory))))
))

