(ns patterns.structural.bridge
   (:require [clojure.string :as str]))

(defprotocol pourer (pour [a] [a b]))

(defrecord cherrysodaimp [] pourer (pour [this] "Yummy Cherry Soda!"))
(defrecord  grapesodaimp [] pourer (pour [this] "Delicious Grape Soda!"))
(defrecord orangesodaimp [] pourer (pour [this] "Citrusy Orange Soda!"))

(defn size-pourer [n flavor]
   (str/join (map (fn [_] (str "...glug..." (pour flavor))) (range 0 n))))

(defrecord mediumsoda []
	pourer 
		(pour [this flavor] (size-pourer 2 flavor)))

(defrecord supersizesoda []
	pourer 
		(pour [this flavor] (size-pourer 5 flavor)))

