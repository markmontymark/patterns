(ns patterns.behavioral.memento-test
  (:require
      [clojure.test :refer :all]
      [patterns.behavioral.memento :refer :all]
   ))

(let
   [ stars '("Guy Pearce")
	  originator (dvddetails :title "Memento" :stars stars  :region 1)
	  caretaker (create-memento originator) ]

	(deftest memento-test
		(testing "First rev of originator"
			(is (= 
				"DVD: Memento, starring: (\"Guy Pearce\"), encoding region: 1"
				(format-dvd-details originator))))

		(testing "First rev of caretaker has same state as originator"
			(is (= 
				(format-dvd-details originator)
				(format-dvd-details caretaker))))

		(add-star originator "edskdzkvdfb")

		(testing "Second rev of originator"
			(is (= 
				"DVD: Memento, starring: (\"edskdzkvdfb\" \"Guy Pearce\"), encoding region: 1"
				(format-dvd-details originator))))

		(testing "Second rev of originator has diverged from caretaker"
			(is (not= 
				(format-dvd-details caretaker)
				(format-dvd-details originator))))

		(rollback caretaker originator)

		(testing "Rollback to first rev of originator"
			(is (= 
				"DVD: Memento, starring: (\"Guy Pearce\"), encoding region: 1"
				(format-dvd-details originator))))

		(testing "Rollback of originator, now same state as caretaker"
			(is (= 
				(format-dvd-details caretaker)
				(format-dvd-details originator))))
	)
)
