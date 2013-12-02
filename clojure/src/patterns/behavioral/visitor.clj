(ns patterns.behavioral.visitor
   (:require [clojure.string :as str])
)

(defrecord Shortblurb [])
(defrecord Longblurb [])
(defrecord Bookinfo [title author])
(defrecord Dvdinfo  [title star region])
(defrecord Gameinfo [title])

(defmulti visit (fn[visitor info] [(class visitor) (class info)]))

(defmethod visit [Shortblurb Bookinfo] [visitor info]
	(str "SB-Book: " (:title info)))
(defmethod visit [Longblurb  Bookinfo] [visitor info]
	(str "LB-Book: " (:title info)
		", Author: " (:author info)))
	
(defmethod visit [Shortblurb Gameinfo] [visitor info]
	(str "SB-Game: " (:title info)))
(defmethod visit [Longblurb  Gameinfo] [visitor info]
	(str "LB-Game: " (:title info)))

(defmethod visit [Shortblurb Dvdinfo] [visitor info]
	(str "SB-DVD: " (:title info)))
(defmethod visit [Longblurb  Dvdinfo] [visitor info]
	(str "LB-DVD: " (:title info) 
		", starring " (:star info) 
		", encoding region: " (:region info)))

(defn accept [info blurb]
	(visit blurb info))
