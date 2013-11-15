
(defpackage :behavioral-template-method
	;(:use :common-lisp)
	(:export :dvd-info :book-info :game-info :process-title-info)
)

(in-package :behavioral-template-method)

(load "src/behavioral/template_method/titleinfo.lisp")
(load "src/behavioral/template_method/gametitleinfo.lisp")
(load "src/behavioral/template_method/booktitleinfo.lisp")
(load "src/behavioral/template_method/dvdtitleinfo.lisp")
