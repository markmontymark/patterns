(defclass dvdname-strategy-the-at-end
	(dvdname-strategy)
	())

(defun starts-with (chr str)
   (char-equal chr(char str 0)))

(defmethod format-dvdname
   ((this dvdname-strategy-the-at-end)
    (dvdname string) 
	)
	(cond 
		((search "The " dvdname)
			(concatenate 'string (subseq dvdname 4) ", The"))
		((search "THE " dvdname)
			(concatenate 'string (subseq dvdname 4) ", THE"))
		((search "the " dvdname)
			(concatenate 'string (subseq dvdname 4) ", the"))
      (t dvdname))
   )
