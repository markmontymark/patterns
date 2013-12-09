(ns patterns.creational.factory_method
	(:require 
		[common.soups :refer :all]
))

; interface for how a soup factory should be created
(defprotocol soupfactorymethod 
	(make-buffetname [this])
	(make-chickensoup [this])
	(make-clamchowder [this])
	(make-fishchowder [this])
	(make-minnestrone [this])
	(make-pastafazul [this])
	(make-tofusoup [this])
	(make-vegetablesoup [this]))

(defrecord bostonsoupfactorymethod []
	soupfactorymethod
		(make-buffetname [this] "Boston Soup Buffet")
		(make-chickensoup [this] (chickensoup))
		(make-clamchowder [this] (bostonclamchowder))
		(make-fishchowder [this] (bostonfishchowder))
		(make-minnestrone [this] (minnestrone))
		(make-pastafazul [this] (pastafazul))
		(make-tofusoup [this] (tofusoup))
		(make-vegetablesoup [this] (vegetablesoup)))


(defrecord honolulusoupfactorymethod []
	soupfactorymethod
		(make-buffetname [this] "Honolulu Soup Buffet")
		(make-chickensoup [this] (chickensoup))
		(make-clamchowder [this] (honoluluclamchowder))
		(make-fishchowder [this] (honolulufishchowder))
		(make-minnestrone [this] (minnestrone))
		(make-pastafazul [this] (pastafazul))
		(make-tofusoup [this] (tofusoup))
		(make-vegetablesoup [this] (vegetablesoup)))


