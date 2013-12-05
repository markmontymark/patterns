
(defpackage :creational-singleton)

(in-package :creational-singleton)

(load "src/creational/singleton/singlespoon.lisp")

(defclass spoon 
	()
	(
	 (instance :allocation :class :accessor :instance :initform nil)
	 (last-soup :accessor :last-soup)
	 (is-available :accessor :is-available :initform nil)))

(defmethod initialize-instance :after ((this spoon) &key)
	(when (not (:instance this))
		(setf (:instance this) this)
		(setf (:is-available (:instance this)) t)
	))

(defmethod available
	((this spoon))
	(or 
		(:is-available (:instance this))
		(eql this (:instance this))))

(defmethod get-spoon
	((this spoon))
	(when (available this)
		(setf (:instance this) this)));is-available (:instance this)) t)))

(defmethod return-spoon
	((this spoon))
	(let ((that (:instance this)))
	(when (eql this that)
		(setf (:instance this) (make-instance 'spoon))
		(setf (:is-available (:instance this)) t)
		)))

(defmethod use-spoon
	((this spoon))
	(let ((that (:instance this)))
		(when (and that (:is-available that))
			(setf (:is-available that) (not t))
			(setf (:instance this) this))))
