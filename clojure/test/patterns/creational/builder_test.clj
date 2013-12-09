(ns patterns.creational.builder-test
	(:require 
		[clojure.test :refer :all]
		[clojure.string :as str]
		[common.soups :refer :all]
		[common.soupbuffet :refer :all]
		[patterns.creational.builder :refer :all])
)


(deftest creational-builder-test
   (let
		[boston (bostonsoupbuffetbuilder)
		 honolu (honolulusoupbuffetbuilder) 
			]

		(testing  "Building Boston Soup Buffet"
			(is (=
				"At the Boston Soup Buffet Today's Soups!   Chicken Soup: ChickenSoup Clam Chowder: QuahogChowder Fish Chowder: ScrodFishChowder Minnestrone: Minnestrone Pasta Fazul: Pasta Fazul Tofu Soup: Tofu Soup Vegetable Soup: Vegetable Soup"
				(str "At the " (:name boston) (todays-soups boston)))))

		(testing 
			(is (=
				"At the Honolulu Soup Buffet Today's Soups!   Chicken Soup: ChickenSoup Clam Chowder: PacificClamChowder Fish Chowder: OpakapakaFishChowder Minnestrone: Minnestrone Pasta Fazul: Pasta Fazul Tofu Soup: Tofu Soup Vegetable Soup: Vegetable Soup"
				(str "At the " (:name honolu) (todays-soups honolu)))))


	))


