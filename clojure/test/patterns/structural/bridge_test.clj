(ns patterns.structural.bridge-test
  (:require
      [clojure.test :refer :all]
      [clojure.string :as str]
      [patterns.structural.bridge :refer :all]
   ))


(deftest structural-bridge-test
   (let
		[flavors [ cherrysodaimp grapesodaimp orangesodaimp]
		 sizes [ mediumsoda supersizesoda]]
	(testing "" (is (= 
		(str
			"...glug...Yummy Cherry Soda!...glug...Yummy Cherry Soda!"
			"...glug...Yummy Cherry Soda!...glug...Yummy Cherry Soda!...glug...Yummy Cherry Soda!...glug...Yummy Cherry Soda!...glug...Yummy Cherry Soda!"
			"...glug...Delicious Grape Soda!...glug...Delicious Grape Soda!"
			"...glug...Delicious Grape Soda!...glug...Delicious Grape Soda!...glug...Delicious Grape Soda!...glug...Delicious Grape Soda!...glug...Delicious Grape Soda!"
			"...glug...Citrusy Orange Soda!...glug...Citrusy Orange Soda!"
			"...glug...Citrusy Orange Soda!...glug...Citrusy Orange Soda!...glug...Citrusy Orange Soda!...glug...Citrusy Orange Soda!...glug...Citrusy Orange Soda!")
		(str/join (map (fn [f] (str/join (map (fn [s](pour-soda s f)) sizes))) flavors))
	)))))


