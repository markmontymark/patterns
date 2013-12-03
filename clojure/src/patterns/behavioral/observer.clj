(ns patterns.behavioral.observer
   (:require [clojure.string :as str]))


; dvd release 

(defrecord dvdrelease [
	serialNumber name relyear relmonth relday ])

   
(defn dr-update-dvd-release [
	this serialNumber dvdName relyear relmonth relday ]
	(dosync
		(alter this update-in [ serialNumber dvdName relyear relmonth relday ]
			[serialNumber dvdName relyear relmonth relday ])))
 
(defn update-dvd-releasedate [this relyear relmonth relday]
	;(dosync
		;(alter this update-in [ relyear relmonth relday ]
		(assoc this :relyear relyear :relmonth relmonth :relday relday ))
	;)

  
; dvd subscriber 
(defrecord dvdsubscriber [name])

(defn ds-new-dvd-release [ this release subscription-list-name]
	(str
		"Hello " (:name this) 
		" subscriber to the " subscription-list-name 
		" DVD release list. "
		"The new Dvd " 
			(:name release) 
		" will be released on " 
			(:relmonth release) "/"  
			(:relday release)  "/"  
			(:relyear release)  "."))
   
(defn  ds-update-dvd-release [this release subscription-list-name]
	(str "Hello " (:name this)  
       " subscriber to the "  
         subscription-list-name 
       " DVD release list. "
       "The following DVDs release has been revised: "  
         (:name release)  " will be released on "  
         (:relmonth release)  "/"  
         (:relday release)  "/"  
         (:relyear release)  "."))
; dvd release by category 

(defrecord dvdrelbycategory [name subscribers releases])

(defn make-dvd-rel-by-category [name & {:keys [subscribers releases]}]
	(let [
		sbs (or subscribers (ref #{}))
		rls (or releases (ref #{}))]
	(dvdrelbycategory. name sbs rls)))

(defn add-subscriber [this subscriber]
	(dosync
		(commute (:subscribers this) conj subscriber)))
 
(defn remove-subscriber [this subscriber]
	(dosync
		(commute (:subscribers this) disj subscriber)))
   
(defn notify-subscribers-of-new-dvd [this release]
	(str/join " " 
		(map #(ds-new-dvd-release % release (:name this)) @(:subscribers this))))


(defn notify-subscribers-of-update [this release]
	(str/join " "
		(map #(ds-update-dvd-release % release (:name this)) @(:subscribers this))))

(defn new-dvd-release [this release]
	(dosync
		(commute (:releases this) conj release)
	)
	(notify-subscribers-of-new-dvd this release))

(defn update-dvd [this release]
	(let [
		is-dvd-updated nil
		dvd-to-update (filter #(= (:serialNumber release) (:serialNumber %)) @(:releases this)) ]
		(cond 
			dvd-to-update
			(do
				(dosync 
					(alter (:releases this) disj dvd-to-update)
					(alter (:releases this) conj release))
				(notify-subscribers-of-update this release))
			true
			(new-dvd-release this release))))

