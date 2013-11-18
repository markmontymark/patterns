(defclass teacup 
	()
	())

(defmethod steep-tea-bag 
	((this teacup)
	 (tb teabag))
	(steep-tea-in-cup tb))
