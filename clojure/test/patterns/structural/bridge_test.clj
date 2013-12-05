(ns patterns.structural.bridge-test
  (:require
      [clojure.test :refer :all]
      [clojure.string :as str]
      [patterns.structural.bridge :refer :all])
  (:import (patterns.structural.bridge cherrysodaimp grapesodaimp orangesodaimp mediumsoda supersizesoda)))

(deftest structural-bridge-test
   (let [
		c (->cherrysodaimp)
		g (->grapesodaimp)
		o (->orangesodaimp)
		m (->mediumsoda)
		z (->supersizesoda)
		flavors [c g o]
		sizes [m z]
	]
	(testing "One big munge of flavor and sizes test" 
		(is (= (str
			"...glug...Yummy Cherry Soda!...glug...Yummy Cherry Soda!"
			"...glug...Yummy Cherry Soda!...glug...Yummy Cherry Soda!...glug...Yummy Cherry Soda!...glug...Yummy Cherry Soda!...glug...Yummy Cherry Soda!"
			"...glug...Delicious Grape Soda!...glug...Delicious Grape Soda!"
			"...glug...Delicious Grape Soda!...glug...Delicious Grape Soda!...glug...Delicious Grape Soda!...glug...Delicious Grape Soda!...glug...Delicious Grape Soda!"
			"...glug...Citrusy Orange Soda!...glug...Citrusy Orange Soda!"
			"...glug...Citrusy Orange Soda!...glug...Citrusy Orange Soda!...glug...Citrusy Orange Soda!...glug...Citrusy Orange Soda!...glug...Citrusy Orange Soda!")
		(str/join 
			(map (fn [f] 
				(str/join 
					(map (fn [s](pour s f)) sizes))) 
			flavors))
	)))))


