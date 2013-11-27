(ns patterns.creational.prototype-test
  (:require
      [clojure.test :refer :all]
      [patterns.creational.prototype :refer :all]
   ))

(let [
	uf-a (make-utensil-factory :spoon soup-spoon :fork  salad-fork)
	uf-b (make-utensil-factory :spoon salad-spoon :fork  salad-fork)
	]
	(deftest prototype-test

		(testing "Can make forks and spoon from first factory"
			(is (= "Spoon: Soup Spoon, Fork: Salad Fork"
				(str "Spoon: " (call (make-spoon uf-a) :get-name) ", Fork: " (call (make-fork uf-a) :get-name)))))
		(testing "Can make forks and spoon from first factory"
			(is (= "Spoon: Salad Spoon, Fork: Salad Fork"
				(str "Spoon: " (call (make-spoon uf-b) :get-name) ", Fork: " (call (make-fork uf-b) :get-name)))))
))
	


