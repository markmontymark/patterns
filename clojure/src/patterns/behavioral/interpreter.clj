(ns patterns.behavioral.interpreter
   (:require 
		[clojure.string :as str]
		[clojure.set :as sett])
)

(defn get-all-titles [ctx] (str/join ", " (sort (keys ctx))))

(defn get-all-actors [ctx]
		;(str/join ", " (sett/union (into (sorted-set) (vals ctx)))))
		(str/join ", " 
			(sett/union (into #{} (reduce (fn [x y] (sett/union x y)) #{}  (map (fn [z] z) (vals ctx)))))))

(defn get-actors-by-title [ctx title]
	(title (:titles-and-actors ctx)))

(defn get-titles-by-actor [ctx actor])

(defmulti  interpret :expr)

(defmethod interpret :actor 
	([action ctx] (get-all-actors ctx))
	([action ctx title] (get-actors-by-title ctx title)))

(defmethod interpret :title
	([action ctx] (get-all-titles ctx))
	([action ctx actor] (get-titles-by-actor ctx actor)))


(defn expr-parse [ctx expression]
	(with-local-vars [
		mainQuery " "
		subQuery " "
		forUsed nil
		searchString nil
		searchStarted nil
		searchEnded nil
		action nil ]
       
		(doseq [token (clojure.string/split expression #"\s+")]
			(cond
				(= token "title")
					(if (= " " @mainQuery) 
						(var-set mainQuery "T") 
						(when (and @forUsed (= " " @subQuery)) 
							(var-set subQuery "T")))

				(= token "actor")
					(if (= " " @mainQuery) 
						(var-set mainQuery "A") 
						(when (and @forUsed (= " " @subQuery)) 
							(var-set subQuery "A")))

				(= token "for")
					(var-set forUsed true) 

				(and (not @searchString)
					 	(not (= @subQuery " "))
						(= "<" (subs token 0 1)))
					(do
					(var-set searchString token)
					(var-set searchStarted true)
					(when (= (subs token (- (.length token) 1)) ">") 
						(var-set searchEnded true)))

				(and @searchStarted (not @searchEnded))
						(do
					(var-set searchString (str searchString " " token))
					(when (= (subs token (- (.length token) 1)) " ") 
						(var-set searchEnded true)))
					
			)
			(when @searchString 
				(var-set searchString (clojure.string/replace @searchString #"^<" ""))
				(var-set searchString (clojure.string/replace @searchString #">$" "")))
		)

		(cond
			(= "A" @mainQuery)
				(if (= "T" @subQuery) 
					(var-set action {:expr :actor :title @searchString} )
					(var-set action {:expr :actor }))
			(= "T" @mainQuery)
				(if (= "A" @subQuery) 
					(var-set action {:expr :title :actor @searchString} )
					(var-set action {:expr :title}))
		)
	   (str "Query Result: " (interpret @action ctx))
		
	))

