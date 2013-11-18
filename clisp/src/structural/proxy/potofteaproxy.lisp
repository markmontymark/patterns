(defclass pot-of-tea-proxy 
	() 
	())

(defmethod pour-tea
	((this pot-of-tea-proxy))
	(pour-tea (make-instance 'pot-of-tea)))
