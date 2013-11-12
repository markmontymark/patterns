(defclass dvdname-strategy-replacespaces
	(dvdname-strategy)
	((from :accessor :from :initarg :from )
	 (to   :accessor :to   :initarg :to )))

(defmethod format-dvdname
   ((this dvdname-strategy-replacespaces)
    (dvdname string))
	(substitute (:to this) (:from this) (copy-seq dvdname)))
