(load "~/quicklisp/setup.lisp")
(ql:quickload :lisp-unit)
(load "src/behavioral/interpreter/package.lisp")
(in-package :behavioral-interpreter)

(lisp-unit:define-test behavioral-interpreter-test

 (let
   ((ctx (make-instance 'expr-context))
    (client (make-instance 'dvd-interpreter-client))
   )
	(add-title ctx "Caddy Shack")
	(add-title ctx "Training Day")
	(add-title ctx "Hamlet")

	(add-actor ctx "Ethan Hawke")
	(add-actor ctx "Denzel Washington")

	(add-title-actor ctx (make-instance 'title-actor :title "Training Day" :actor "Denzel Washington"))
	(add-title-actor ctx (make-instance 'title-actor :title "Training Day" :actor "Ethan Hawke"))
	(add-title-actor ctx (make-instance 'title-actor :title "Hamlet" :actor "Ethan Hawke"))
	(add-title-actor ctx (make-instance 'title-actor :title "Caddy Shack" :actor "Ethan Hawke"))

	(lisp-unit:assert-equal
		"Query Result:, Denzel Washington, Ethan Hawke"
		(parse client ctx "show actor"))
	(lisp-unit:assert-equal
		"Query Result:, Caddy Shack, Hamlet, Training Day"
		(parse client ctx "show title"))
	(lisp-unit:assert-equal
		"Query Result:"
		(parse client ctx "show actor for title"))
	(lisp-unit:assert-equal
		"Query Result:"
		(parse client ctx "show title for actor"))
	(lisp-unit:assert-equal
		"Query Result:, Denzel Washington, Ethan Hawke"
		(parse client ctx "show actor for title <Training Day>"))
	(lisp-unit:assert-equal
		"Query Result:, Caddy Shack, Hamlet, Training Day"
		(parse client ctx "show title for actor <Ethan Hawke>"))

   )
)

(setq lisp-unit:*print-failures* t)
(setq lisp-unit:*print-errors* t)
(lisp-unit:run-tests)

