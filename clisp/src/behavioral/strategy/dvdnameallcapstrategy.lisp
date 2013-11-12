(defclass dvdname-strategy-allcaps
	(dvdname-strategy)
	())

(defmethod format-dvdname 
   ((this dvdname-strategy-allcaps)
	 (dvdname string))
	(string-upcase dvdname))
	
