; - Two Of Four Terminal Expressions
(defclass expr-actor-title (expr-interface) 
	((title :initarg :title :initform nil :reader :title)))

(defmethod interpret ( (this expr-actor-title) (ctx expr-context) )
	(let ( 
		(the-title (:title this)))
		(cond
			((not the-title) ())
			(t (get-actors-by-title ctx the-title)))))

