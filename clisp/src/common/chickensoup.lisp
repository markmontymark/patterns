(defclass chickensoup
	(soup)
	())

(defmethod initialize-instance :after ((this chickensoup) &key)
	(setf (slot-value this 'name) "ChickenSoup")
	(setf (slot-value this 'ingredients) (list
        "1 Pound diced chicken"
        "1/2 cup rice"
        "1 cup bullion"
        "1/16 cup butter"
        "1/4 cup diced carrots")))
