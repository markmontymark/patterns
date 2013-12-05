(ns common.soups-test
  (:require
      [clojure.test :refer :all]
      [common.soups :refer :all]))

(deftest common-soup-test
	(let []

   (testing "Can make a bostonclamchowder" (is (not= nil (bostonclamchowder))))
   (testing "Can make a bostonfishchowder" (is (not= nil (bostonfishchowder))))
   (testing "Can make a clamchowder" (is (not= nil (clamchowder))))
   (testing "Can make a chickensoup" (is (not= nil (chickensoup))))
	(testing "Can make a fishchowder" (is (not= nil (fishchowder))))
	(testing "Can make a honoluluclamchowder" (is (not= nil (honoluluclamchowder))))
	(testing "Can make a honolulufishchowder" (is (not= nil (honolulufishchowder))))
	(testing "Can make a minnestrone" (is (not= nil (minnestrone))))
	(testing "Can make a pasta fazul" (is (not= nil (pastafazul))))
	(testing "Can make a tofu soup" (is (not= nil (tofusoup))))
	(testing "Can make a vegetable soup" (is (not= nil (vegetablesoup))))
	
   (testing "Name test for bostonclamchowder" (is (= "QuahogChowder" (:name (bostonclamchowder)))))
   (testing "Name test for bostonfishchowder" (is (= "ScrodFishChowder" (:name (bostonfishchowder)))))
   (testing "Name test for clamchowder" (is (= "ClamChowder" (:name (clamchowder)))))
   (testing "Name test for chickensoup" (is (= "ChickenSoup" (:name (chickensoup)))))
	(testing "Name test for fishchowder" (is (= "FishChowder" (:name (fishchowder)))))
	(testing "Name test for honoluluclamchowder" (is (= "PacificClamChowder" (:name (honoluluclamchowder)))))
	(testing "Name test for honolulufishchowder" (is (= "OpakapakaFishChowder" (:name (honolulufishchowder)))))
	(testing "Name test for minnestrone" (is (= "Minnestrone" (:name (minnestrone)))))
	(testing "Name test for pasta fazul" (is (= "Pasta Fazul" (:name (pastafazul)))))
	(testing "Name test for tofu soup" (is (= "Tofu Soup" (:name (tofusoup)))))
	(testing "Name test for vegetable soup" (is (= "Vegetable Soup" (:name (vegetablesoup)))))

))


