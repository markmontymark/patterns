(ns patterns.behavioral.template_method-test
  (:require
      [clojure.test :refer :all]
      [patterns.behavioral.template_method :refer :all]
   ))

(let [
	bladeRunner   {:type :dvd-info  :title "Blade Runner" :star "Harrison Ford" :region 1}
	electricSheep {:type :book-info :title "Do Androids Dream of Electric Sheep?" :author "Phillip K. Dick"}
	sheepRaider   {:type :game-info :title "Sheep Raider"} ]

(deftest template-method-test
	(testing "Short Short Book template method"
		(is (=
			"Title: Do Androids Dream of Electric Sheep?"
			(basic-process-title-info electricSheep))))

	(testing "Short Game template method"
		(is (=
			"Title: Sheep Raider"
			(basic-process-title-info sheepRaider))))

	(testing "Short Dvd template method"
		(is (=
			"Title: Blade Runner"
			(basic-process-title-info bladeRunner))))

	(testing "Full Book template method"
		(is (=
			"Book: Do Androids Dream of Electric Sheep?, Author: Phillip K. Dick"
			(full-process-title-info electricSheep))))

	(testing "Full Game template method"
		(is (=
			"Game: Sheep Raider"
			(full-process-title-info sheepRaider))))

	(testing "Full Dvd template method"
		(is (=
			"DVD: Blade Runner, starring: Harrison Ford, encoding region: 1"
			(full-process-title-info bladeRunner))))
))

