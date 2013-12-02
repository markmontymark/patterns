(ns patterns.behavioral.memento
   (:require [clojure.string :as str])
)

(defn dvddetails [ & {:keys [title region stars]}]
	(ref {:title title :region region :stars (ref stars)}))

(defn create-memento [originator]
	(ref {:title (:title @originator) :stars (ref (deref (:stars @originator))) :region (:region @originator)}))

(defn format-dvd-details [obj]
	(str "DVD: " (:title @obj) ", starring: " (deref (:stars @obj)) ", encoding region: " (:region @obj)))

(defn add-star [obj star]
	(dosync
		(alter (:stars @obj) conj star)))


(defn rollback [from to]
	(dosync 
		(alter to assoc :title (:title @from))
		(alter to assoc :stars (ref (deref (:stars @from))))
		(alter to assoc :region (:region @from))
	))

