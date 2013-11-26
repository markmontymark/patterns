(ns patterns.behavioral.strategy-test
  (:require
      [clojure.test :refer :all]
		[clojure.string :as str :only (join)]
      [patterns.behavioral.strategy :refer :all]
   ))

(let [dvdnames '("Jay and Silent Bob Strike Back" "The Fast and the Furious" "The Others") ]

	(deftest strategy-test
		(testing "all caps test"
			(is (=
				"JAY AND SILENT BOB STRIKE BACK, THE FAST AND THE FURIOUS, THE OTHERS"
				(str/join ", " (format-dvd-names ctx-all-caps dvdnames)))))

		(testing "all caps test"
			(is (=
				"Jay*and*Silent*Bob*Strike*Back, The*Fast*and*the*Furious, The*Others"
				(str/join ", " (format-dvd-names ctx-spaces dvdnames)))))
		(testing "all caps test"
			(is (=
				"Jay and Silent Bob Strike Back, Fast and the Furious, The, Others, The"
				(str/join ", " (format-dvd-names ctx-the-end dvdnames)))))
))

