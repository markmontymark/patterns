(ns patterns.behavioral.iterator-test
  (:require
      [clojure.test :refer :all]
      ;[patterns.behavioral.iterator :refer :all]
   ))

(let [
   fiveShakespeareMovies (atom #{
			"10 Things I Hate About You"
			"Shakespeare In Love"
			"O (2001)"
			"American Pie 2"
			"Scotland PA."
			"Hamlet (2000)"})]

	(deftest iterator-test
		(testing "First count of items"
			(is (= 6 (count @fiveShakespeareMovies))))
      
		(swap! fiveShakespeareMovies disj "American Pie 2")

		(testing "First count of items"
			(is (= 5 (count @fiveShakespeareMovies))))
	))
