!

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

(defclass bostonsoupfactory 
	(abstractsoupfactory)
	())

(defmethod initialize-instance :after ((this bostonsoupfactory) &key)
	(setf (slot-value this 'location) "Boston"))

(defmethod make-clamchowder ((this bostonsoupfactory))
	(make-instance 'patterns-common:bostonclamchowder))

(defmethod make-fishchowder ((this bostonsoupfactory))
	(make-instance 'patterns-common:bostonfishchowder))

(defclass honolulusoupfactory 
	(abstractsoupfactory)
	())

(defmethod initialize-instance :after ((this honolulusoupfactory) &key)
	(setf (slot-value this 'location) "Honolulu"))

(defmethod make-clamchowder ((this honolulusoupfactory))
	(make-instance 'patterns-common:honoluluclamchowder))

(defmethod make-fishchowder ((this honolulusoupfactory))
	(make-instance 'patterns-common:honolulufishchowder))

(defpackage :creational-abstract-factory)

(in-package :creational-abstract-factory)

(load "src/creational/abstract_factory/abstractsoupfactory.lisp")
(load "src/creational/abstract_factory/bostonconcretesoupfactory.lisp")
(load "src/creational/abstract_factory/honoluluconcretesoupfactory.lisp")
