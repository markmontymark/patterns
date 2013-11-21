(defclass prototypefactory 
	()
	((spoon :accessor :spoon :initarg :spoon)
	 (fork  :accessor :fork  :initarg :fork)))
	
(defmethod make-spoon
	((this prototypefactory))
	(make-instance (:spoon this)))

(defmethod make-fork
	((this prototypefactory))
	(make-instance (:fork this)))
