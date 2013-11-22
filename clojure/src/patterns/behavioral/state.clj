(ns patterns.behavioral.state
	(:require [clojure.string :as str])
)

(defn cycler []  
   (let [tick (atom 0)]
      (fn [] (if (= 2 @tick) (reset! tick 0) (swap! tick inc)) @tick)))

(defn name-munger [] {
	:star-count (cycler)
	:to-replace " "
	:usually "*" 
	:sometimes "!"
	})

(defn munge-name [munger name-to-munge]
	(if (= 0 ((:star-count munger)))
		(str/replace name-to-munge (:to-replace munger) (:sometimes munger))
		(str/replace name-to-munge (:to-replace munger) (:usually   munger))))

