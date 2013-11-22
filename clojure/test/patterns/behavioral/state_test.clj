(ns patterns.behavioral.state-test
  (:require 
		[clojure.test :refer :all]
      [patterns.behavioral.state :refer :all]
	))

(deftest tst
	(let [munger (name-munger)]
		(testing "First show name"
			(is	(= "Sponge*Bob*Squarepants*-*Nautical*Nonsense*and*Sponge*Buddies" 
					(munge-name munger "Sponge Bob Squarepants - Nautical Nonsense and Sponge Buddies"))))
		(testing "Second show name"
			(is (= "Jay*and*Silent*Bob*Strike*Back" 
				 (munge-name munger "Jay and Silent Bob Strike Back"))))

		(testing "Third show name"
			(is (= "Buffy!The!Vampire!Slayer!Season!2" 
				 (munge-name munger "Buffy The Vampire Slayer Season 2"))))

(comment
		(testing "Fourth show name"
			(is (= "The*Sopranos*Season*2" 
				 (munge-name name-munger "The Sopranos Season 2"))))
)
))
