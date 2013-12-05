(ns patterns.creational.abstract_factory
	(:require
		[common.soups :refer :all]))

(defn abstractsoupfactory [] {
	:make-chickensoup 	#(chickensoup)
	:make-clamchowder 	#(clamchowder)
	:make-fishchowder 	#(fishchowder)
	:make-minnestrone 	#(minnestrone)
	:make-pastafazul 		#(pastafazul)
	:make-tofusoup 		#(tofusoup)
	:make-vegetablesoup 	#(vegetablesoup)   })

(defn bostonsoupfactory []
	(merge (abstractsoupfactory) {
		:location "Boston" 
		:make-clamchowder #(bostonclamchowder)
		:make-fishchowder #(bostonfishchowder) }))
	
(defn honolulusoupfactory []
	(merge (abstractsoupfactory) {
		:location "Honolulu" 
		:make-clamchowder #(honoluluclamchowder)
		:make-fishchowder #(honolulufishchowder) }))

