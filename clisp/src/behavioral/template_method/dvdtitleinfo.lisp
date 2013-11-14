
(defclass dvd-info 
	(title-info)
	((star :accessor :star :initarg :star)
	 (region :accessor :region :initarg :region)))

(defmethod get-title-blurb 
	( (this dvd-info))
	(concatenate 'string 
		"DVD: " (:title this)
		", starring " (:star this)))
   
(defmethod get-region 
	((this dvd-info))
	(concatenate 'string 
		", encoding region: " (:region this)))
