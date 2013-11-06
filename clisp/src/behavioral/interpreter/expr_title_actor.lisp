; - Two Of Four Terminal Expressions
(defclass expr-title-actor (expr-interface) 
	((actor :initarg :actor :reader :actor)))

(defmethod interpret
	( (this expr-title-actor) (ctx expr-context) )
	(let ( 
		(the-actor (:actor this)))
      (cond
         ((not the-actor) ())
         (t (get-titles-by-actor ctx the-actor)))))

