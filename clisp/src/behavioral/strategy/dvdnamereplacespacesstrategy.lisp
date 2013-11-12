(defclass dvdname-strategy-replacespaces
	(dvdname-strategy)
	())

(defmethod format-dvdname
   ((this dvdname-strategy-replacespaces)
    (dvdname string)
    (charIn char))
	(substitute #\  charIn (copy-seq dvdname)))
