
(defclass abstractsoupfactory
	()
	((location :initarg :location :accessor :location)))


(defgeneric make-chickensoup 		(abstractsoupfactory))
(defgeneric make-clamchowder 		(abstractsoupfactory))
(defgeneric make-fishchowder 		(abstractsoupfactory))
(defgeneric make-minnestrone 		(abstractsoupfactory))
(defgeneric make-pastafazul 		(abstractsoupfactory))
(defgeneric make-tofusoup 			(abstractsoupfactory))
(defgeneric make-vegetablesoup 	(abstractsoupfactory))

(defmethod make-chickensoup 		(abstractsoupfactory)
	(make-instance 'patterns-common:chickensoup))
(defmethod make-clamchowder 		(abstractsoupfactory)
	(make-instance 'patterns-common:clamchowder))
(defmethod make-fishchowder 		(abstractsoupfactory)
	(make-instance 'patterns-common:fishchowder))
(defmethod make-minnestrone 		(abstractsoupfactory)
	(make-instance 'patterns-common:minnestrone))
(defmethod make-pastafazul 		(abstractsoupfactory)
	(make-instance 'patterns-common:pastafazul))
(defmethod make-tofusoup 			(abstractsoupfactory)
	(make-instance 'patterns-common:tofusoup))
(defmethod make-vegetablesoup 	(abstractsoupfactory)
	(make-instance 'patterns-common:vegetablesoup))

