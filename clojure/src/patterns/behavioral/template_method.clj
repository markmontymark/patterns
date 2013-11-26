(ns patterns.behavioral.template_method) 

(defn get-region [x]
	(:region x))

(defn get-bookblurb [x]
	(str "Book: " (:title x) ", Author: " (:author x)))

(defn get-gameblurb [x]
	(str "Game: " (:title x)))

(defn get-dvdblurb [x]
	(str "DVD: " (:title x) ", starring: " (:star x)))

(defn get-dvdregion [x]
	(str ", encoding region: " (:region x)))



(defn make-process-title-info [get-titleblurb & opt-get-region]
	(let [region (or (first opt-get-region) get-region)]	
	(fn [x]
	(str 
		(get-titleblurb x)
		(region x)))))

(defn basic-process-title-info [x]
	((make-process-title-info 
		(fn [y] (str "Title: " (:title y)))
		(fn [y] "")
		) x))

(defmulti full-process-title-info :type)

(defmethod full-process-title-info :book-info [x]
	((make-process-title-info get-bookblurb) x))

(defmethod full-process-title-info :game-info [x]
	((make-process-title-info get-gameblurb) x))

(defmethod full-process-title-info :dvd-info [x]
	((make-process-title-info get-dvdblurb get-dvdregion) x))

