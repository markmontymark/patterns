(defclass soupbuffetbuilder 
	()
	((soupbuffet :accessor :soupbuffet)))

(defgeneric set-soupbuffet-name (soupbuffetbuilder))

(defmethod build-soupbuffet
	((this soupbuffetbuilder))
	(setf (:soupbuffet this) (make-instance 'patterns-common:soupbuffet)))

(defmethod build-chickensoup ((this soupbuffetbuilder))
	(setf (:chickensoup (:soupbuffet this)) (make-instance 'patterns-common:chickensoup)))

(defmethod build-clamchowder ((this soupbuffetbuilder))
	(setf (:clamchowder (:soupbuffet this)) (make-instance 'patterns-common:clamchowder)))

(defmethod build-fishchowder ((this soupbuffetbuilder))
	(setf (:fishchowder (:soupbuffet this)) (make-instance 'patterns-common:fishchowder)))

(defmethod build-minnestrone ((this soupbuffetbuilder))
	(setf (:minnestrone (:soupbuffet this)) (make-instance 'patterns-common:minnestrone)))

(defmethod build-pastafazul ((this soupbuffetbuilder))
	(setf (:pastafazul (:soupbuffet this)) (make-instance 'patterns-common:pastafazul)))

(defmethod build-tofusoup ((this soupbuffetbuilder))
	(setf (:tofusoup (:soupbuffet this)) (make-instance 'patterns-common:tofusoup)))

(defmethod build-vegetablesoup ((this soupbuffetbuilder))
	(setf (:vegetablesoup (:soupbuffet this)) (make-instance 'patterns-common:vegetablesoup)))
