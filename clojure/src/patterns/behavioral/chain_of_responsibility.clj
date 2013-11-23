(ns patterns.behavioral.chain_of_responsibility
   (:require [clojure.string :as str])
)

(defn dvd-category [ & {:keys [title category parent]}]
	(let [
		title (or title nil)
		category (or category nil)
		parent (or parent nil)]
	{:category category :title title :parent parent }))

(defn get-top-title [obj]
	(if (:category obj) (:category obj)
		(if (:parent obj) (get-top-title (:parent obj))	nil)))

(defn get-all-categories 
	([obj] (get-all-categories obj []))
	([obj accumulator]
    (if (not (:parent obj))
      (str/join "/" (reverse (conj accumulator (:category obj))))
      (recur 
         (:parent obj) (conj accumulator (:category obj))))))


