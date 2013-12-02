(ns patterns.behavioral.visitor-test
  (:require
      [clojure.test :refer :all]
      [patterns.behavioral.visitor :refer :all]
   ))

(let [
	bladeRunner   (patterns.behavioral.visitor.Dvdinfo.  "Blade Runner" "Harrison Ford"  "1")
	electricSheep (patterns.behavioral.visitor.Bookinfo. "Do Androids Dream of Electric Sheep?" "Phillip K. Dick")
	sheepRaider   (patterns.behavioral.visitor.Gameinfo. "Sheep Raider")
	visitor-long-fn (patterns.behavioral.visitor.Longblurb. )
	visitor-shrt-fn (patterns.behavioral.visitor.Shortblurb.)
	]

(deftest visitor-tst
   (testing "dvd, book, game and long blurb visitor"
		(is (=
			["LB-DVD: Blade Runner, starring Harrison Ford, encoding region: 1"
			"LB-Book: Do Androids Dream of Electric Sheep?, Author: Phillip K. Dick"
			"LB-Game: Sheep Raider"]
			[(accept bladeRunner   visitor-long-fn)
			 (accept electricSheep visitor-long-fn)
			 (accept sheepRaider   visitor-long-fn)] 
		)))

   (testing "dvd, book, game and short blurb visitor"
		(is (=
			["SB-DVD: Blade Runner"
			"SB-Book: Do Androids Dream of Electric Sheep?"
			"SB-Game: Sheep Raider"]
			[(accept bladeRunner   visitor-shrt-fn)
			 (accept electricSheep visitor-shrt-fn)
			 (accept sheepRaider   visitor-shrt-fn)]
		)))
))
