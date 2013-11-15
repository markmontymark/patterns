(defclass dvdlist   
	()
	((titles :accessor :titles :initarg :titles)
	 (titlecount :accessor :titlecount :initform 0)))

(defmethod initialize-instance :after ((this dvdlist) &key )
   (let ((ttls (:titles this)))
      (setf (slot-value this 'titlecount) (list-length ttls))))


(defmethod add ((this dvdlist) (title string))
	(append (:titles this) title)
	(incf (:titlecount this)))
   
(defmethod deleteitem ( (this dvdlist) (title string) )
	(let ((did-delete (delete-if #'(lambda(x)(string= title x)) (:titles this))))
		(print "did the delete ")
		(print did-delete)
	(decf (:titlecount this))))
  
(defmethod create-iterator ((this dvdlist))
	(make-instance 'dvdlistiterator :dvdlist this))

