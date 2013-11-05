(defclass dvd-category (top-title)  
	((category
		:initarg :category
		:initform nil
		:accessor :category)
	(top-category-title
		:initarg :top-category-title
		:initform nil
		:accessor :top-category-title)
	(parent
		:initarg :parent
		:initform nil
		:accessor :parent)))

(defmethod get-top-title ((dtt dvd-category))
   (if (:top-category-title dtt) (:top-category-title dtt)
	 (if (:parent dtt) (get-top-title (:parent dtt)) nil)))

(defmethod get-all-categories ((dgac dvd-category))
	(unless dgac "")
	(if (:parent dgac)
		(concatenate 'string (get-all-categories (:parent dgac)) "/" (:category dgac))
		(:category dgac)))
