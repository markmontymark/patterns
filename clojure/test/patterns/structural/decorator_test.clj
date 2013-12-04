(ns patterns.structural.decorator-test
  (:require
      [clojure.test :refer :all]
      [patterns.structural.decorator :refer :all]
   ))

(deftest structural-decorator-test
   (let
   [tl (tealeaves)
	 chai (chaidecorator) ]

	(testing "" (is (= nil (not tl))))
	(testing "" (is (= nil (:tea-is-steeped tl))))
	(testing "" (is (= nil (not chai))))
	(setf (:ttmc chai) tl)
	(testing "" (is (= 
		"tea leaves are steeping, bay leaf is steeping, cinnamon stick is steeping, ginger is steeping, honey is steeping, soy milk is steeping, vanilla bean is steeping" 
		(steep-tea chai))))
	(testing "" (is (= t (:tea-is-steeped (:ttmc chai)))))
))

