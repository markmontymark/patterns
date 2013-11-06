; - Three Of Four Terminal Expressions

(defclass expr-title (expr-interface) ())
(defmethod interpret ( (this expr-title) (ctx expr-context))
   (get-all-titles ctx))

