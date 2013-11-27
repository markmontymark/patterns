(ns patterns.behavioral.interpreter-test
  (:require
      [clojure.test :refer :all]
      [patterns.behavioral.interpreter :refer :all]
   ))


 (let
	[ctx {
			"Training Day" ["Ethan Hawke" "Denzel Washington"]
			"Caddy Shack"  ["Ethan Hawke"]
			"Hamlet"			["Ethan Hawke"]
		}]


	(deftest interpreter-test

		(testing "show all actors"
			(is (= 
				"Query Result: Denzel Washington, Ethan Hawke"
				(expr-parse ctx "show actor"))))

		(testing "show all actors"
			(is (= 
				"Query Result: Caddy Shack, Hamlet, Training Day"
				(expr-parse ctx "show title"))))

		(testing "show all actors"
			(is (= 
				"Query Result: Denzel Washington, Ethan Hawke"
				(expr-parse ctx "show actor for title <Training Day>"))))

		(testing "show all actors"
			(is (= 
				"Query Result: Caddy Shack, Hamlet, Training Day"
				(expr-parse ctx "show title for actor <Ethan Hawke>"))))

   ))
