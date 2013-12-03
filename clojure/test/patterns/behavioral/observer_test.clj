(ns patterns.behavioral.observer-test
  (:require
      [clojure.test :refer :all]
      [patterns.behavioral.observer :refer :all])
	(:import (patterns.behavioral.observer dvdrelbycategory dvdsubscriber dvdrelease))
)

(let [
	btvs (make-dvd-rel-by-category "Buffy the Vampire Slayer")
	simpsons (make-dvd-rel-by-category "The Simpsons")
	sopranos (make-dvd-rel-by-category "The Sopranos")
	xfiles (make-dvd-rel-by-category "The X-Files")

	jsopra (dvdsubscriber. "Junior Soprano")
	msimps (dvdsubscriber. "Maggie Simpson")
	rgiles (dvdsubscriber. "Rupert Giles")
	smulde (dvdsubscriber. "Samantha Mulder")
	wrosen (dvdsubscriber. "Willow Rosenberg")

	btvsS2 (dvdrelease. "DVDFOXBTVSS20" "Buffy The Vampire Slayer Season 2" 2002 6 11)
	simpS2 (dvdrelease. "DVDFOXSIMPSO2" "The Simpsons Season 2" 2002 7  9)
	soprS2 (dvdrelease. "DVDHBOSOPRAS2" "The Sopranos Season 2" 2001 11  6)
	xfilS5 (dvdrelease. "DVDFOXXFILES5" "The X-Files Season 5" 2002 4  1)
	]

	(add-subscriber btvs rgiles)
	(add-subscriber btvs wrosen)  
	(add-subscriber simpsons msimps)
	(add-subscriber sopranos jsopra)
	(add-subscriber xfiles smulde)
	(add-subscriber xfiles wrosen)

	(deftest observer-testing

		(testing "New dvd release test 1" (is (=  
			"Hello Rupert Giles subscriber to the Buffy the Vampire Slayer DVD release list. The new Dvd Buffy The Vampire Slayer Season 2 will be released on 6/11/2002. Hello Willow Rosenberg subscriber to the Buffy the Vampire Slayer DVD release list. The new Dvd Buffy The Vampire Slayer Season 2 will be released on 6/11/2002."
			(new-dvd-release btvs btvsS2))))

		(testing "New dvd release test 2" (is (=  
			"Hello Maggie Simpson subscriber to the The Simpsons DVD release list. The new Dvd The Simpsons Season 2 will be released on 7/9/2002."
			(new-dvd-release simpsons simpS2))))

		(testing "New dvd release test 3" (is (=  
			"Hello Junior Soprano subscriber to the The Sopranos DVD release list. The new Dvd The Sopranos Season 2 will be released on 11/6/2001."
			(new-dvd-release sopranos soprS2))))

		(testing "New dvd release test 4"  (is (=  
			"Hello Samantha Mulder subscriber to the The X-Files DVD release list. The new Dvd The X-Files Season 5 will be released on 4/1/2002. Hello Willow Rosenberg subscriber to the The X-Files DVD release list. The new Dvd The X-Files Season 5 will be released on 4/1/2002."
			(new-dvd-release xfiles xfilS5))))

		(remove-subscriber xfiles wrosen)

		;(update-dvd-releasedate xfilS5 2002 5 14)

		(testing "Update dvd test" (is (=  
			"Hello Samantha Mulder subscriber to the The X-Files DVD release list. The following DVDs release has been revised: The X-Files Season 5 will be released on 5/14/2002."
			(update-dvd xfiles (update-dvd-releasedate xfilS5 2002 5 14)))))
	)
)
