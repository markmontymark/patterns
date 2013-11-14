
(defclass title-info
	()
	( (title :accessor :title :initarg :title)))

(defgeneric get-title-blurb (title-info))   
(defgeneric get-region (title-info))   


(defmethod process-title-info (this)
	(concatenate 'string "" (get-title-blurb this) "" (get-region this)))


