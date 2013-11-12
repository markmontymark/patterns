(load "~/quicklisp/setup.lisp")
(ql:quickload :lisp-unit)
(load "src/behavioral/iterator/package.lisp")
(in-package :behavioral-iterator)

(lisp-unit:define-test behavioral-iterator-test


 (let
   (
      (fiveShakespeareMovies (make-instance 'dvdlist :list (
			"10 Things I Hate About You"
			"Shakespeare In Love"
			"O (2001)"
			"American Pie 2"
			"Scotland PA."
			"Hamlet (2000)")))
		(fiveShakespeareIterator)
		(a_num_iterations 0) 
		(b_num_iterations 0) )
	(setf fiveShakespeareIterator (create-iterator fiveShakespeareMovies))
	(loop until (done fiveShakespeareIterator)
		(do
			(incf a_num_iterations)
         (next fiveShakespeareIterator)  
      ))

	(lisp-unit:assert-equal 6 a_num_iterations)
       
   (delete "American Pie 2" (:list fiveShakespeareMovies))
       
   (first fiveShakespeareIterator)       
	(loop until (done fiveShakespeareIterator)
		(do
			(incf b_num_iterations)
         (next fiveShakespeareIterator)  
      ))
	(lisp-unit:assert-equal 
			(- a_num_iterations 1)
			b_num_iterations
		)
	   
   )
)

(setq lisp-unit:*print-failures* t)
(setq lisp-unit:*print-errors* t)
(lisp-unit:run-tests)

	
