(ns patterns.behavioral.strategy
   (:require [clojure.string :as str])
)

(defn format-dvd-names [strategy names]
	(map strategy names))

(defn ctx-all-caps [x] (str/upper-case x))

(defn ctx-spaces [x] (str/replace x " " "*"))

(defn ctx-the-end [x]
	(if (= "THE " (str/upper-case (subs x 0 4)))
		(str (subs x 4) ", " (subs x 0 3))
		x))
