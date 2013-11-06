; One Of Four Terminal Expressions

(defclass expr-actor (expr-interface)
	() )

(defmethod interpret ((this expr-actor) (ctx expr-context))
	(get-all-actors ctx))
