(ns patterns.structural.facade
   (:require [clojure.string :as str]))

;tea bag
(defn make-facade-tea-bag [] {})

;water
(defn make-facade-water [] 
	{:water-is-boiling (atom nil)})

(defn boil-water [water] 
	(swap! (:water-is-boiling water) (constantly true)))


;tea cup
(defn make-facade-tea-cup [] 
	{:tea-bag-is-steeped (atom nil)
	 :wah-wah (atom nil)
	 :tea-bag (atom nil)})

(defn steep-tea-bag [teacup]
	(cond
		(and @(:tea-bag teacup) 
			(and @(:wah-wah teacup)
				(and @(:water-is-boiling @(:wah-wah teacup)))))
				(swap! (:tea-bag-is-steeped teacup) (constantly true))
		true 
				(swap! (:tea-bag-is-steeped teacup) (constantly nil))))

(defn add-tea-bag [teacup teabag]
	(swap! (:tea-bag teacup) (constantly teabag)))

(defn add-water [teacup water]
	(swap! (:wah-wah teacup) (constantly water)))
   
(defn to-string [teacup]
	(cond
		@(:tea-bag-is-steeped teacup)
			"A nice cuppa tea!"
		true 
			(str "A cup with "
				(cond
					@(:wah-wah teacup)
						(if @(:water-is-boiling @(:wah-wah teacup)) 
							"boiling " 
							"cold ")
					true 
						"no ")
				"water and "
				(if @(:tea-bag teacup) "a " "no ")
				"teabag")))

;facade that wraps details of how to make a cup of tea
(defn make-a-cuppa []
	(let[
		cup (make-facade-tea-cup)
		bag (make-facade-tea-bag)
		water (make-facade-water)]

		(add-tea-bag cup bag)
		(boil-water water)
		(add-water cup water)
		(steep-tea-bag cup)
		cup))
