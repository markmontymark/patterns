(load "src/behavioral/iterator/package.lisp")
(in-package :behavioral-iterator)

(lisp-unit:define-test behavioral-iterator-test
	(let
   ((fiveShakespeareMovies (make-instance 'dvdlist :titles (list
			"10 Things I Hate About You"
			"Shakespeare In Love"
			"O (2001)"
			"American Pie 2"
			"Scotland PA."
			"Hamlet (2000)")))
		(fiveShakespeareIterator)
		(first-iteration 0) 
		(second-iteration 0))
	(setf fiveShakespeareIterator (create-iterator fiveShakespeareMovies))
	(loop while (not (done fiveShakespeareIterator))
		do (progn
		(incf first-iteration)
      (next fiveShakespeareIterator)))

	(lisp-unit:assert-equal 6 first-iteration)
       
   (deleteitem fiveShakespeareMovies "merican Pie 2")

	;(print (:titles fiveShakespeareMovies))
       
   (reset fiveShakespeareIterator)       
	(loop while (not (done fiveShakespeareIterator))
		do (progn
		;(print (current-item fiveShakespeareIterator))	
		(incf second-iteration)
      (next fiveShakespeareIterator)))

	(lisp-unit:assert-equal 
			(- first-iteration 1)
			second-iteration)))

(lisp-unit:write-tap (lisp-unit:run-tests :all))

