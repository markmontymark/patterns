(ns patterns.structural.flyweight
   (:require [clojure.string :as str]))

(defn teaordercontext [table-no] {:table  table-no})

(defn teaflavor [flavor] {:flavor flavor})

(defn serve-tea [flavor ctx]
	(str "Serving tea flavor " (:flavor flavor) " to table number " (:table ctx)))

(defn teaflavorfactory [] {:teas-made (atom 0) :flavors (ref #{})})

(defn get-tea-flavor [factory flavor]
	(let [ found-flavor (contains? @(:flavors factory) {:flavor flavor}) ]
		(cond 
			found-flavor found-flavor
			true 
				(dosync
					(swap! (:teas-made factory) inc)
					(alter (:flavors factory) conj (teaflavor flavor))))))

