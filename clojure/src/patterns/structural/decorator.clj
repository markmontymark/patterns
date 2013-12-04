(ns patterns.structural.decorator
   (:require [clojure.string :as str]))

(defclass chaidecorator 
	(tea)
	((ttmc :accessor :ttmc :initarg :ttmc :initform nil)
	 (chai-ingredients :accessor :chai-ingredients)))

(defmethod initialize-instance ((this chaidecorator) &key)
	(setf (slot-value this 'chai-ingredients) (list
        "bay leaf"
        "cinnamon stick"
        "ginger"
        "honey"
        "soy milk"
        "vanilla bean")))

(defmethod steep-tea
	((this chaidecorator))
	(steep-chai this))

(defmethod steep-chai
	((this chaidecorator))
	(concatenate 'string 
		(steep-tea (:ttmc this)) ", "
		(steep-chai-ingredients this)))


(defmethod steep-chai-ingredients 
	((this chaidecorator))
	(let
		((x (map 'list #'(lambda(x)(concatenate 'string x " is steeping")) (:chai-ingredients this))))
		(format nil "~{~A~^, ~}" x)))

(defclass tealeaves 
	(tea) ())

(defmethod steep-tea 
	((this tealeaves))
	(setf (:tea-is-steeped this) t)
	"tea leaves are steeping")
(defclass tea   
	()
	((tea-is-steeped :accessor :tea-is-steeped :initform nil)))

(defgeneric steep-tea (tea))
