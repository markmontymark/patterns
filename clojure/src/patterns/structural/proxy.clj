(ns patterns.structural.proxy
   (:require [clojure.string :as str]))

(defgeneric pour-tea (pot-of-tea))
(defclass pot-of-tea () ())
(defmethod pour-tea ((this pot-of-tea))
	"Pouring tea")
(defclass pot-of-tea-proxy 
	() 
	())

(defmethod pour-tea
	((this pot-of-tea-proxy))
	(pour-tea (make-instance 'pot-of-tea)))
