(ns patterns.behavioral.chain_of_responsibility-test
  (:require 
		[clojure.test :refer :all]
      [patterns.behavioral.chain_of_responsibility :refer :all]
	))

(deftest tst
	(let [
		a (dvd-category :title "parent category" :category "Comedy")
		b (dvd-category :title "sub category" :parent a :category "Childrens")
		c (dvd-category :title "sub sub category" :parent b :category "Aquatic")
		]

		(testing "c has a parent"
			(is (= (:parent c)
					 b)))

		(testing "top level dvd category"
			(is (= (:category a)
					 "Comedy")))

		(testing "sub level dvd category"
			(is (= (:category b)
					 "Childrens")))

		(testing "sub sub level dvd category"
			(is (= (:category c)
					 "Aquatic")))

		(testing "sub sub level parent"
			(is (= (:parent c)
					 b)))

		(testing "sub level parent"
			(is (= (:parent b)
					 a)))
		(testing "top level dvd category"
			(is (= (get-all-categories c)
					 "Comedy/Childrens/Aquatic")))
	))
