(ns patterns.behavioral.mediator-test
  (:require
      [clojure.test :refer :all]
      [patterns.behavioral.mediator :refer :all]
   ))

	(let
		[title "Mulholland Dr."
		 dvdLower    (dvdlowercasetitle (ref title))
		 dvdUpper    (dvduppercasetitle (ref title))
		 mediator (dvdmediator :lower (ref dvdLower) :upper (ref dvdUpper))]

	(deftest mediator-test

		(testing "Upper and Lower maps have same title"
			(is (= (deref (:title dvdUpper)) (deref (:title dvdLower)))))

		(testing "Lower has its own lowercased title"
			(is (= "mulholland dr." (:lowercasetitle dvdLower))))

		(testing "Upper has its own uppercased title"
			(is (= "MULHOLLAND DR." (:uppercasetitle dvdUpper))))
	
		(set-super-lowercase-title mediator)

		(testing "Lower has its own lowercased title, still"
			(is (= "mulholland dr." (:lowercasetitle dvdLower))))

		(testing "Shared title is now lowercased, in lower"
			(is (= "mulholland dr." (deref (:title dvdLower)))))
		(testing "Shared title is now lowercased, in upper"
			(is (= "mulholland dr." (deref (:title dvdUpper)))))

		(testing "Upper's uppercasetitle is not affected"
			(is (= "MULHOLLAND DR." (:uppercasetitle dvdUpper))))
	))


