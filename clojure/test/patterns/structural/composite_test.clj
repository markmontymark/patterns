(ns patterns.structural.composite-test
  (:require
      [clojure.test :refer :all]
      [patterns.structural.composite :refer :all]
   ))


(deftest structural-composite-test
   (let
   [a-tin-of-tea-bags (make-tin-of-tea-bags :name "tin of tea bags")
    small-tin-of-tea-bags (make-tin-of-tea-bags :name "small tin of tea bags")
	 teabag-1 (make-one-tea-bag :name "tea bag 1")
	 teabag-2 (make-one-tea-bag :name "tea bag 2")
	 teabag-3 (make-one-tea-bag :name "tea bag 3")]

   (add a-tin-of-tea-bags teabag-1)
   (add a-tin-of-tea-bags teabag-2)
	(testing "" (is (= 2 (count-teabags a-tin-of-tea-bags))))

   (add small-tin-of-tea-bags teabag-3)

	(testing "" (is (= 1 (count-teabags small-tin-of-tea-bags))))

   (add a-tin-of-tea-bags small-tin-of-tea-bags)

	(testing "" (is (= 3 (count-teabags a-tin-of-tea-bags))))

	(drop a-tin-of-tea-bags teabag-2)

	(testing "" (is (= 2 (count-teabags a-tin-of-tea-bags))))
))


