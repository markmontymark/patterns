(defpackage :behavioral-visitor
	(:use :common-lisp)
	(:export :dvd-info :book-info :game-info :title-blurb-visitor-long :title-blurb-visitor-short :accept))


(in-package :behavioral-visitor)

(load "src/behavioral/visitor/abstracttitleinfo.lisp")
(load "src/behavioral/visitor/titleblurbvisitor.lisp")
(load "src/behavioral/visitor/bookinfo.lisp")
(load "src/behavioral/visitor/dvdinfo.lisp")
(load "src/behavioral/visitor/gameinfo.lisp")
(load "src/behavioral/visitor/titlelongblurbvisitor.lisp")
(load "src/behavioral/visitor/titleshortblurbvisitor.lisp")
