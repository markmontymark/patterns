(ns patterns.behavioral.command-test
  (:require 
		[clojure.test :refer :all]
      [patterns.behavioral.command :refer :all]
	))

(deftest command-tst
	(testing "stars on"
		(is (= (stars-on "Jim Bob Joe")
				"Jim*Bob*Joe")))

	(testing "stars off"
		(is (= (stars-off "Jim*Bob**Joe")
				"Jim Bob  Joe")))
)

