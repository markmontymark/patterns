(defclass dvddetails
	()
	((title :accessor :title :initarg :title)
	 (stars :accessor :stars :initarg :stars)
	 (region :accessor :region :initarg :region)))


(defmethod add-star ((this dvddetails) (star string))
	(setf (cdr (last (:stars this))) (cons star nil)))

(defmethod stars-as-string ((this dvddetails)) ;  private static String getStarsString(ArrayList starsIn) {
	(format nil "~{~A~^, ~}" (:stars this)))
   
(defmethod format-dvd-details ((this dvddetails))
	(concatenate 'string 
		"DVD: " (:title this)
		", starring: " (stars-as-string this)
		", encoding region: " (:region this)))

(defmethod set-memento-state ((this dvddetails) (that dvddetails))
	(setf (:title  this) (copy-seq  (:title  that)))
	(setf (:region this) (copy-seq  (:region that)))
	(setf (:stars  this) (copy-list (:stars  that))))

(defmethod create-memento ((this dvddetails))
	(make-instance 'dvddetails 
		:title (copy-seq (:title this)) 
		:stars (copy-list (:stars this))
		:region (copy-seq (:region this))))
	
