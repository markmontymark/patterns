(ns patterns.behavioral.state)

(defn cycler []  
   (let [tick (atom 0)]
      (fn []
         (if (= 2 @tick) (reset! tick 0) (swap! tick inc))
         @tick)))

(defmulti munge-name :Stt)
(defn name-w-stars [] {:Stt :name-w-stars :star-count (cycler)})
(defn name-w-exclamation [] {:Stt :name-w-exclamation })

(defmethod munge-name :name-w-stars [ctx name-to-munge]
	;(ctx :namer (name-w-exclamation))
	(clojure.string/replace name-to-munge #" " "*"))
			
(defmethod munge-name :name-w-exclamation [ctx name-to-munge]
	;(ctx :namer (name-w-stars))
	(clojure.string/replace name-to-munge #" " "!"))

(defn dvdcontext [] {:Stt (name-w-stars)})
(defn show-name [ctx name-to-munge]
	(munge-name (ctx :Stt) name-to-munge))
