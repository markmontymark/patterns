(defclass dvduppercasetitle
   (dvdtitle)
   ( (uppercasetitle :accessor :uppercasetitle :initarg :uppercasetitle :initform nil)))

(defmethod initialize-instance :after ((this dvduppercasetitle) &key )
   (let ((ttl (:title this)))
      (setf (slot-value this 'uppercasetitle) (string-upcase ttl))))

