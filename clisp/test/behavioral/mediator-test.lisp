(load "~/quicklisp/setup.lisp")
(ql:quickload :lisp-unit)
(load "src/behavioral/mediator/package.lisp")
(in-package :behavioral-mediator)

(lisp-unit:define-test behavioral-mediator-test

	(let ( 
		(title "Mulholland Dr.")
		(dvdMediator (make-instance 'dvdmediator))
		(dvdLower    (make-instance 'dvdlowercasetitle :title "Mulholland Dr."))
      (dvdUpper    (make-instance 'dvduppercasetitle :title "Mulholland Dr."))
		)

		(setf (:mediator dvdLower) dvdMediator)
		(setf (:mediator dvdUpper) dvdMediator)
		(setf (:upper dvdMediator) dvdLower)
		(setf (:lower dvdMediator) dvdUpper)

		(setf (:title dvdLower) title)
		(setf (:title dvdUpper) title)
		(lisp-unit:assert-equal (:title dvdUpper) (:title dvdLower))
		
		(lisp-unit:assert-equal "mulholland dr." (:lowercasetitle dvdLower))
		(lisp-unit:assert-equal "MULHOLLAND DR." (:uppercasetitle dvdUpper))
      (lisp-unit:assert-equal "Mulholland Dr." (:title dvdUpper))
       
      (set-super-lowercase-title dvdLower)

      (lisp-unit:assert-equal "mulholland dr." (:lowercasetitle dvdLower))
      (lisp-unit:assert-equal "Mulholland Dr." (:title dvdLower))
      (lisp-unit:assert-equal "MULHOLLAND DR." (:uppercasetitle dvdUpper))
      (lisp-unit:assert-equal "Mulholland Dr." (:title dvdUpper))

  )
)

(setq lisp-unit:*print-failures* t)
(setq lisp-unit:*print-errors* t)
(lisp-unit:run-tests)


