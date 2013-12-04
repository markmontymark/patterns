(ns patterns.structural.composite
   (:require [clojure.string :as str]))

(defrecord teabags [name parent teabaglist])

(defprotocol Teabagger 
	(count-teabags [this])
	(add-teabag    [this teabag])
	(drop-teabag   [this teabag]))

(defrecord one-tea-bag [teabags]
	Teabagger 
		(count-teabags [this] 1)
		(add-teabag    [this _] nil)
		(drop-teabag   [this _] nil))


(defrecord tin-of-tea-bags [teabags]
	Teabagger
		(count-teabags [this]
			(reduce  + 0 (map #(count-teabags %) @(:teabaglist (:teabags this)))))
		(add-teabag [this tb]
			(swap! (:parent (:teabags tb)) (constantly this))
			(dosync
				(commute (:teabaglist (:teabags this)) conj tb)))
		(drop-teabag [this tb]
			(swap! (:parent (:teabags tb)) (constantly nil))
			(dosync
				(commute (:teabaglist (:teabags this)) disj tb))))
   
(defn make-one-tea-bag [name]
	(->one-tea-bag (->teabags name (atom nil) (ref #{}))))

(defn make-tin-of-tea-bags [name]
	(->tin-of-tea-bags (->teabags name (atom nil) (ref #{}))))
