(ns patterns.creational.abstract_factory-test
	(:require
		[clojure.test :refer :all]
		[clojure.string :as str]
      [patterns.creational.abstract_factory :refer :all]))

(defn MakeSoupOfTheDay [sf]
	(let
		[soups [
			((:make-chickensoup sf))
			((:make-clamchowder sf))
			((:make-fishchowder sf))
			((:make-minnestrone sf))
			((:make-pastafazul sf))
			((:make-tofusoup sf))
			((:make-vegetablesoup sf))]]
		(get soups 1)))

(deftest patterns.creational.abstract_factory-test

   (let
		[bsf (bostonsoupfactory)
		 hsf (honolulusoupfactory)]
		
		(testing "Boston soup factory test"
			(is (=
				"The Soup of the day in Boston is QuahogChowder"
				(str "The Soup of the day in " (:location bsf) " is " (:name (MakeSoupOfTheDay bsf))))))
	
		(testing "Honolulu soup factory test"
			(is (=
				"The Soup of the day in Honolulu is PacificClamChowder"
				(str "The Soup of the day in " (:location hsf) " is " (:name (MakeSoupOfTheDay hsf))))))
	))


