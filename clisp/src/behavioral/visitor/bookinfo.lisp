
(defclass book-info
	(abstract-title-info)
	( (author :accessor :author :initarg :author)))
    
(defmethod accept ((this book-info) (visitor title-blurb-visitor))
	(visit visitor this))
