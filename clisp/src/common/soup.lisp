(defclass soup
	()
	((name :accessor :name)
	 (ingredients :accessor :ingredients)))

(defmethod to-string 
	((this soup))
	(format nil "~{~A~^ ~}" 
		(list (:ingredients this)
			(:name this) )))
