(ns patterns.creational.builder
   (:require
      [common.soups :refer :all]
      [common.soupbuffet :refer :all]
      [patterns.creational.abstract_factory :refer :all])
	(:import (common.soupbuffet soupbuffet))
)

(defn soupbuffetbuilder-helper [bldr name]
	(soupbuffet. name
		((:make-chickensoup bldr))
		((:make-clamchowder bldr))
		((:make-fishchowder bldr))
		((:make-minnestrone bldr))
		((:make-pastafazul bldr)) 
		((:make-tofusoup bldr))
		((:make-vegetablesoup bldr))
	))

(defn bostonsoupbuffetbuilder []
	(soupbuffetbuilder-helper (bostonsoupfactory) "Boston Soup Buffet"))

(defn honolulusoupbuffetbuilder []
	(soupbuffetbuilder-helper (honolulusoupfactory) "Honolulu Soup Buffet"))
	
