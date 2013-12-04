(ns patterns.structural.composite-test
  (:require
      [clojure.test :refer :all]
      [patterns.structural.composite :refer :all]
   ))


(deftest structural-composite-test
   (let
   [a-tin-of-tea-bags (make-tin-of-tea-bags "tin of tea bags")
    small-tin-of-tea-bags (make-tin-of-tea-bags "small tin of tea bags")
	 teabag-1 (make-one-tea-bag "tea bag 1")
	 teabag-2 (make-one-tea-bag "tea bag 2")
	 teabag-3 (make-one-tea-bag "tea bag 3")]

   (add-teabag a-tin-of-tea-bags teabag-1)
   (add-teabag a-tin-of-tea-bags teabag-2)

	(testing "After adding two tea bags to a tin" 
		(is (= 2 (count-teabags a-tin-of-tea-bags))))

   (add-teabag small-tin-of-tea-bags teabag-3)

	(testing "After adding a tea bag to different tin" 
		(is (= 1 (count-teabags small-tin-of-tea-bags))))

   (add-teabag a-tin-of-tea-bags small-tin-of-tea-bags)

	(testing "After adding a tin of teabags into another tin of tea bags" 
		(is (= 3 (count-teabags a-tin-of-tea-bags))))

	(drop-teabag a-tin-of-tea-bags teabag-2)

	(testing "Drop a single tea bag from a tin with a tin and a tea bag" 
		(is (= 2 (count-teabags a-tin-of-tea-bags))))
))


