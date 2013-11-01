(defpackage :behavioral-state
	(:use :common-lisp)
	(load (compile-file "src/behavioral/state/dvdstatename.lisp"))
	(load (compile-file "src/behavioral/state/dvdstatenameexclaim.lisp"))
	(load (compile-file "src/behavioral/state/dvdstatenamestars.lisp"))
	(load (compile-file "src/behavioral/state/dvdstatecontext.lisp"))
)
