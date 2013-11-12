(load "~/quicklisp/setup.lisp")
(ql:quickload :lisp-unit)
(load "src/behavioral/strategy/package.lisp")
(in-package :behavioral-strategy)

(defun join (separator string stringlist list)
	(format nil (concatenate 'string "~{~A~^" separator " ~}") stringlist))

(lisp-unit:define-test behavioral-memento-test


 (let
   (
		(allCapContext (make-instance 'DvdNameContext :strategy (make-instance 'dvdname-strategy-allcaps)))
		(theEndContext (make-instance 'DvdNameContext :strategy (make-instance 'dvdname-strategy-the-at-end)))
		(spacesContext (make-instance 'DvdNameContext :strategy (make-instance 'dvdname-strategy-replacespaces :replaceChar '*')))
		(dvdnames ( "Jay and Silent Bob Strike Back" "The Fast and the Furious" "The Others"))
		)

	(lisp-unit:assert-equal 
		"JAY AND SILENT BOB STRIKE BACK, THE FAST AND THE FURIOUS, THE OTHERS"
		(join ", " (format-dvd-names allCapContext dvdNames)))

	(lisp-unit:assert-equal  
		"Jay and Silent Bob Strike Back, Fast and the Furious, The, Others, The"
		(join ", " (format-dvd-names theEndContext dvdNames)))

	(lisp-unit:assert-equal 
		"Jay*and*Silent*Bob*Strike*Back, The*Fast*and*the*Furious, The*Others"
		(join ", " (format-dvd-names spacesContext dvdNames))
   )
)

(setq lisp-unit:*print-failures* t)
(setq lisp-unit:*print-errors* t)
(lisp-unit:run-tests)
)
