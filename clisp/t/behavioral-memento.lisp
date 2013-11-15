(load "src/behavioral/memento/package.lisp")
(in-package :behavioral-memento)

(lisp-unit:define-test behavioral-memento-test
	(let
   ((memento)
	 (stars (list "Guy Pearce"))
	 (details))
	(setf details (make-instance 'dvddetails :title "Memento" :stars stars :region "1"))
	(setf memento (create-memento details))
	(lisp-unit:assert-equal 
		"DVD: Memento, starring: Guy Pearce, encoding region: 1"
		(format-dvd-details details))

	(add-star details "edskdzkvdfb")  

	(lisp-unit:assert-equal 
		"DVD: Memento, starring: Guy Pearce, edskdzkvdfb, encoding region: 1"
		(format-dvd-details details))

	(lisp-unit:assert-equal 
		"DVD: Memento, starring: Guy Pearce, encoding region: 1"
		(format-dvd-details memento))

	(set-memento-state details memento)
	(lisp-unit:assert-equal 
		"DVD: Memento, starring: Guy Pearce, encoding region: 1"
		(format-dvd-details details))
))

(lisp-unit:write-tap (lisp-unit:run-tests :all))

