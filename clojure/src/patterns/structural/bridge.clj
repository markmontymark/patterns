(ns patterns.structural.bridge
   (:require [clojure.string :as str]))


(defclass cherrysodaimp
	(sodaflavor) ())

(defmethod pour
	((this cherrysodaimp))
	"Yummy Cherry Soda!")
(defclass grapesodaimp
	(sodaflavor) ())

(defmethod pour
	((this grapesodaimp))
	"Delicious Grape Soda!")
(defclass mediumsoda 
	(sodasize)
	())

(defmethod initialize-instance :after ((this mediumsoda) &key)
   (setf (slot-value this 'n) 2))


;(defmethod pour-soda
;	((this mediumsoda)
;	 (flavor sodaflavor))
;	(format nil "~A~^ ~}~" map 'list #'(lambda ()(list "...glug..." (pour-soda flavor)))))
       
(defclass orangesodaimp
	(sodaflavor) ())

(defmethod pour
	((this orangesodaimp))
	"Citrusy Orange Soda!")

(defclass sodaflavor
	()
	())

(defgeneric pour (sodaflavor))

(defun range (start end)
	(loop for i from start below end collect i))

(defclass sodasize
	()
	((imp :accessor :imp :initarg :imp)
	 (n :accessor :n)))

(defgeneric pour-soda (sodasize sodaflavor))

(defmethod set-soda-imp 
	((this sodasize))
	(setf (:imp this) (get-the-soda-imp soda-imp-singleton)))

(defmethod get-soda-imp
	((this sodasize))
	(:imp this))

(defmethod pour-soda
   ((this sodasize)
    (flavor sodaflavor))
   (format nil "~{~A~^~}" (map 'list #'(lambda (x)(concatenate 'string "...glug..." (pour flavor))) (range 0 (:n this)))))
   

(defclass supersizesoda 
	(sodasize)
	())

(defmethod initialize-instance :after ((this supersizesoda) &key)
   (setf (slot-value this 'n) 5))

