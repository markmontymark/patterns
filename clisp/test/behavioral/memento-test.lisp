(load "~/quicklisp/setup.lisp")
(ql:quickload :lisp-unit)
(load "src/behavioral/memento/package.lisp")
(in-package :behavioral-memento)

(lisp-unit:define-test behavioral-memento-test


 (let
   ((memento)
	 (stars ("Guy Pearce"))
	 (details)
	 )
	(setf details (make-instance 'dvd-details :name "Memento" :stars stars :region '1'))
	(setf memento (create-memento details))
   (lisp-unit:assert-equal 
			"DVD: Memento, starring: Guy Pearce, encoding region: 1"
			(format-dvd-details details)
		)
       
       dvdDetails.addStar("edskdzkvdfb")  
       (lisp-unit:assert-equal 
			"DVD: Memento, starring: Guy Pearce, edskdzkvdfb, encoding region: 1"
			 dvdDetails.formatDvdDetails()
		)
       
       (lisp-unit:assert-equal 
			"DVD: Memento, starring: Guy Pearce, encoding region: 1"
			dvdMementoCaretaker.showMemento()
		)
       
       dvdDetails.setDvdMemento(dvdMementoCaretaker)
       (lisp-unit:assert-equal 
			"DVD: Memento, starring: Guy Pearce, encoding region: 1"
			dvdDetails.formatDvdDetails()
		)
	   (lisp-unit:assert-equal
      ""
      ())
   )
)

(setq lisp-unit:*print-failures* t)
(setq lisp-unit:*print-errors* t)
(lisp-unit:run-tests)
	
