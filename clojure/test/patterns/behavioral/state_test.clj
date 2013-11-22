(ns patterns.behavioral.state-test
  (:require 
		[clojure.test :refer :all]
      [patterns.behavioral.state :refer :all]
	))

(deftest tst
	(let [ctx (dvdcontext)]
		(testing "First show name"
			(is	(= "Sponge*Bob Squarepants - Nautical Nonsense and Sponge Buddies" 
					(show-name ctx "Sponge Bob Squarepants - Nautical Nonsense and Sponge Buddies"))))

(comment
		(testing "Second show name"
			(is (= "Jay*and*Silent Bob Strike Back" (show-name ctx "Jay and Silent Bob Strike Back"))))

		(testing "Third show name"
			(is (= "Buffy!The Vampire Slayer Season 2" (show-name ctx "Buffy The Vampire Slayer Season 2"))))

		(testing "Fourth show name"
			(is (= "The*Sopranos Season 2" (show-name ctx "The Sopranos Season 2"))))
)
))
