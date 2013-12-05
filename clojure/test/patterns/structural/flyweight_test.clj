(ns patterns.structural.flyweight-test
  (:require
      [clojure.test :refer :all]
      [patterns.structural.flyweight :refer :all]
   ))

(deftest structural-flyweight-test
   (let
   [orders-made (atom 0)
	 flavors (ref [])
	 tables  (ref [])
	 factory (teaflavorfactory)]

	(defn take-orders [flavor table-no]
		(let [
			latest-flavor (get-tea-flavor factory flavor)
			latest-ctx    (teaordercontext table-no)
			]
			(swap! orders-made inc)
			(dosync
				(commute flavors conj latest-flavor)
				(commute tables  conj latest-ctx)
			)
	))

	;(defn serve-em [flavors tables]
		;(when (and flavors tables) 
			;(serve-tea (first flavors) (first tables))
			;(serve-em  (rest flavors) (rest tables))
		;))

	(defn serve-em [flavors tables]
		(loop [f flavors t tables]
			(when (and (not (empty? f)) (not (empty? t) ))
				(serve-tea (first f) (first t))
				(recur (rest f) (rest t)))))

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

	(serve-em @flavors @tables)

	(testing "How may teas did we make?" (is (= 3 @(:teas-made factory))))
))

