(ns patterns.structural.decorator-test
  (:require
      [clojure.test :refer :all]
      [patterns.structural.decorator :refer :all])
  (:import
		(patterns.structural.decorator tea-leaves chai-tea)))

(deftest structural-decorator-test
   (let
   [tl (make-tea-leaves)
	 chai (make-chai-tea tl) ]

	(testing "tea-leaves are not steeped by default" 
		(is (= nil @(:tea-is-steeped tl))))

	(testing "Steep chai-tea with tea-leaves" 
		(is (= 
			"tea leaves are steeping, bay leaf is steeping, cinnamon stick is steeping, ginger is steeping, honey is steeping, soy milk is steeping, vanilla bean is steeping" 
			(steep-tea chai))))

	(testing "Nested tea leaves are steeped" 
		(is (= true @(:tea-is-steeped tl))))
))

