
(defclass bostonsoupbuffetbuilder
	(soupbuffetbuilder)
	())

(defmethod build-clamchowder 
	((this bostonsoupbuffetbuilder))
	(setf (:clamchowder (:soupbuffet this)) (make-instance 'patterns-common:bostonclamchowder)))

(defmethod build-fishchowder 
	((this bostonsoupbuffetbuilder))
	(setf (:fishchowder (:soupbuffet this)) (make-instance 'patterns-common:bostonfishchowder)))

(defmethod set-soupbuffet-name
	((this bostonsoupbuffetbuilder))
	(setf (:name (:soupbuffet this)) "Boston Soup Buffet"))

(defclass honolulusoupbuffetbuilder
	(soupbuffetbuilder)
	())

(defmethod build-clamchowder 
	((this honolulusoupbuffetbuilder))
	(setf (:clamchowder (:soupbuffet this)) (make-instance 'patterns-common:honoluluclamchowder)))

(defmethod build-fishchowder 
	((this honolulusoupbuffetbuilder))
	(setf (:fishchowder (:soupbuffet this)) (make-instance 'patterns-common:honolulufishchowder)))

(defmethod set-soupbuffet-name
	((this honolulusoupbuffetbuilder))
	(setf (:name (:soupbuffet this)) "Honolulu Soup Buffet"))
(defpackage :creational-builder)

(in-package :creational-builder)

(load "src/creational/builder/soupbuffetbuilder.lisp")
(load "src/creational/builder/bostonsoupbuffetbuilder.lisp")
(load "src/creational/builder/honolulusoupbuffetbuilder.lisp")
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
