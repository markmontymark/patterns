(ns patterns.structural.composite
   (:require [clojure.string :as str]))

(defclass one-tea-bag 
	(teabags) ())

(defmethod count-teabags  ((this one-tea-bag)) 1)
(defmethod add  ((this one-tea-bag) (tb teabags)) nil)
(defmethod drop ((this one-tea-bag) (tb teabags)) nil)

(defclass teabags
	()
	((teabaglist :accessor :teabaglist :initform nil)
	 (parent :accessor :parent :initarg :parent :initform nil)
	 (name :accessor :name :initarg :name)))

(defgeneric count-teabags  (teabags))
(defgeneric add  (teabagsthis teabagsthat))
(defgeneric drop (teabagsthis teabagsthat))
(defclass tin-of-tea-bags 
	(teabags) ())

(defmethod initialize-instance :after ((this tin-of-tea-bags) &key)
	(setf (slot-value this 'teabaglist) ()))

(defmethod count-teabags
	((this tin-of-tea-bags))
	(let
		((n 0))
		(dolist (tb (:teabaglist this))
         (setf n (+ n (count-teabags tb))))
		n))
   
(defmethod add 
	((this tin-of-tea-bags)
	 (tb teabags))
	(setf (:parent this) tb)
	(push tb (:teabaglist this)))
	
(defmethod drop
	((this tin-of-tea-bags)
	 (tb teabags))
	(setf (:teabaglist this) (remove tb (:teabaglist this))))

