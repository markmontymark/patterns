(ns patterns.creational.factory_method-test
	(:require 
		[clojure.test :refer :all]
		[clojure.string :as str ]
		[patterns.creational.factory_method :refer :all]
		[common.soups :refer :all]
		[common.soupbuffet :refer :all]
	)
	(:import
		(patterns.creational.factory_method bostonsoupfactorymethod honolulusoupfactorymethod)
		(common.soupbuffet soupbuffet))
)

(defn init-soupbuffet [fm]
	(soupbuffet. 
		(make-buffetname fm)
		 (make-chickensoup fm)
		 (make-clamchowder  fm)
		 (make-fishchowder  fm)
		 (make-minnestrone  fm)
		 (make-pastafazul  fm)
		 (make-tofusoup  fm)
		 (make-vegetablesoup  fm)))
		

(deftest creational-factory-method-test
   (let [
		 boston-soupbuffet (init-soupbuffet (bostonsoupfactorymethod.))
		 honolu-soupbuffet (init-soupbuffet (honolulusoupfactorymethod.))]

		(testing "Boston soup factory "
			(is (=
				"At the  Boston Soup Buffet Today's Soups!   Chicken Soup: ChickenSoup Clam Chowder: QuahogChowder Fish Chowder: ScrodFishChowder Minnestrone: Minnestrone Pasta Fazul: Pasta Fazul Tofu Soup: Tofu Soup Vegetable Soup: Vegetable Soup"
				(str "At the  " (:name boston-soupbuffet) (todays-soups boston-soupbuffet)))))

		(testing "Honolulu soup factory "
			(is  (=
				"At the  Honolulu Soup Buffet Today's Soups!   Chicken Soup: ChickenSoup Clam Chowder: PacificClamChowder Fish Chowder: OpakapakaFishChowder Minnestrone: Minnestrone Pasta Fazul: Pasta Fazul Tofu Soup: Tofu Soup Vegetable Soup: Vegetable Soup"
				(str "At the  " (:name honolu-soupbuffet) (todays-soups honolu-soupbuffet)))))
	))


