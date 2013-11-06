(defclass expr-context 
	()
	(
		(titles
			:accessor :titles
			:initform ()
			:initarg :titles)
		(actors
			:accessor :actors
			:initform ()
			:initarg :actors)
		(titles-actors
			:accessor :titles-actors
			:initform ()
			:initarg :titles-actors)
	)
)

(defmethod add-title ( (this expr-context) (title string) )
	(push title (:titles this))	)

(defmethod add-actor ( (ctx expr-context) (actor string) ) 
	(push actor (:actors ctx))	)

(defmethod add-title-actor ( (ctx expr-context) (ta title-actor) ) 
	(push ta (:titles-actors ctx))	)

(defmethod get-all-titles ( (ctx expr-context))
	(:titles ctx))

(defmethod get-all-actors ( (ctx expr-context))
	(:actors ctx))

(defmethod get-actors-by-title ( (ctx expr-context) (title string))	
	(map 'list #'(lambda (x) (:actor x)) 
		(remove-if-not #'(lambda (x) (string-equal title (:title x)) ) 
	(:titles-actors ctx)))
)

(defmethod get-titles-by-actor ( (ctx expr-context) (actor string))	
	(map 'list #'(lambda (x) (:title x)) 
		(remove-if-not #'(lambda (x) (string-equal actor (:actor x)) ) 
	(:titles-actors ctx)))
)
