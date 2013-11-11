(defclass dvdlowercasetitle 
	(dvdtitle) 
	( (lowercasetitle :accessor :lowercasetitle :initarg :lowercasetitle :initform nil)))

(defmethod initialize-instance :after ((this dvdlowercasetitle) &key )
	(let ((ttl (:title this)))
		(setf (slot-value this 'lowercasetitle) (string-downcase ttl))))
          
         
(defmethod set-super-lowercase-title 
	((this dvdlowercasetitle) )
	;works (setf (:title this) (string-downcase (:title this)))
	(change-title (:mediator this) this)
)

(defmethod reset-title
	((this dvdlowercasetitle) (newtitle string))
	(setf (:title this) newtitle)
	(setf (:lowercasetitle this) (string-downcase newtitle)))
	
        
