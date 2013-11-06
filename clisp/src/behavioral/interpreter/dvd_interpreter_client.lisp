;  the Client
(defclass dvd-interpreter-client () ())

(defun split-by-one-space (string)
    "Returns a list of substrings of string
divided by ONE space each.
Note: Two consecutive spaces will be seen as
if there were an empty string between them."
    (loop for i = 0 then (1+ j)
          as j = (position #\space string :start i)
          collect (subseq string i j)
          while j))

(defun starts-with (chr str)
	(char-equal chr(char str 0)))

(defun ends-with (chr str)
	(char-equal chr (char str (- (length str) 1))))

(defmethod parse
	( (this dvd-interpreter-client)  (ctx expr-context) (expr string) )
	
	(let 
		(
			(mainQuery #\space)
			(subQuery #\space)
			(forUsed nil)
			(searchString nil)
			(searchStarted nil)
			(searchEnded nil)
			(action nil)
		)
       
		(dolist (currentToken (split-by-one-space expr))
			(cond

				((string-equal currentToken "show") )

				((string-equal currentToken "title")
					(if (char-equal #\space mainQuery) 
						(setf mainQuery #\T) 
						(when (and forUsed (char-equal #\space subQuery)) 
							(setf subQuery #\T)))
					)

				((string-equal currentToken "actor")
					(if (char-equal #\space mainQuery) 
						(setf mainQuery #\A) 
						(when (and forUsed (char-equal #\space subQuery)) (setf subQuery #\A)))
					)

				((string-equal currentToken "for")
					(setf forUsed t) )

				((and (not searchString)
					 	(not (char-equal subQuery #\space))
						(char-equal #\< (char currentToken 0)))
					(setf searchString currentToken)
					(setf searchStarted t)
					(when (ends-with #\> currentToken) (setf searchEnded t)))

				((and searchStarted 
						(not searchEnded))
					(setf searchString (concatenate 'string searchString " " currentToken))
					(when (ends-with #\> currentToken) 
						(setf searchEnded t)))
					
			)
			(when searchString 
				(setf searchString (string-right-trim ">" searchString))
				(setf searchString (string-left-trim "<" searchString)))
		)

		(cond
			((char-equal #\A mainQuery)
				(if (char-equal #\T subQuery) 
					(setf action (make-instance 'expr-actor-title :title searchString) )
					(setf action (make-instance 'expr-actor))))
			((char-equal #\T mainQuery)
				(if (char-equal #\A subQuery) 
					(setf action (make-instance 'expr-title-actor :actor searchString) )
					(setf action (make-instance 'expr-title))))
		)
	   (format nil "~{~A~^, ~}" 
			(concatenate 'list (list "Query Result:") (sort (copy-list (interpret action ctx)) #'string-lessp)))
		
	))

