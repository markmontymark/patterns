(ns patterns.behavioral.mediator
   (:require [clojure.string :as str])
)

(defn dvdlowercasetitle [title]
	{:title title :lowercasetitle (str/lower-case @title)})

(defn dvduppercasetitle [title]
	{:title title :uppercasetitle (str/upper-case @title)})

(defn dvdmediator [ & {:keys [upper lower]}]
	{:lower lower :upper upper})

(defn manage-title-change [mediator new-title]
	(dosync
		(alter (:title (deref (:lower mediator))) (fn [x y] y) new-title)
		(alter (:title (deref (:upper mediator))) (fn [x y] y) new-title)))
	
(defn set-super-lowercase-title [mediator]
	(manage-title-change mediator 
		(str/lower-case 
			(deref (:title 
			(deref (:lower mediator)))))))


