(ns patterns.structural.proxy
   (:require [clojure.string :as str]))

(defprotocol tea-pourer (pour-tea [pot-of-tea]))
(defrecord pot-of-tea [] 
	tea-pourer (pour-tea [pot-of-tea ] "Pouring tea"))

(defrecord pot-of-tea-proxy [] 
	tea-pourer (pour-tea [pot-of-tea-proxy ] 
		(pour-tea (->pot-of-tea))))

(defn make-pot-of-tea-proxy []
	(->pot-of-tea))
