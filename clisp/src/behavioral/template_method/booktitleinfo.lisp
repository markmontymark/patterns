(defclass book-info 
	(title-info)
	( (author :accessor :author :initarg :author)))

(defmethod get-title-blurb 
	( (this book-info))
	(concatenate 'string 
		"Book: " (:title this)
		", Author: " (:author this)))

(defmethod get-region 
	((this book-info))
	" ")

