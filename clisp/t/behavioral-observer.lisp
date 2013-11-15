(load "src/behavioral/observer/package.lisp")
(in-package :behavioral-observer)

(lisp-unit:define-test behavioral-observer-test


 (let 
	(
		(btvs (make-instance 		'dvd-rel-by-category :category "Buffy the Vampire Slayer"))
		(simpsons (make-instance 	'dvd-rel-by-category :category "The Simpsons"))
		(sopranos (make-instance 	'dvd-rel-by-category :category "The Sopranos"))
		(xfiles (make-instance 		'dvd-rel-by-category :category "The X-Files"))

		(jsopra (make-instance 'dvd-subscriber :name "Junior Soprano"))
		(msimps (make-instance 'dvd-subscriber :name "Maggie Simpson"))
		(rgiles (make-instance 'dvd-subscriber :name "Rupert Giles"))
		(smulde (make-instance 'dvd-subscriber :name "Samantha Mulder"))
		(wrosen (make-instance 'dvd-subscriber :name "Willow Rosenberg"))

		(btvsS2 (make-instance 'dvd-release :serialNumber "DVDFOXBTVSS20" :name "Buffy The Vampire Slayer Season 2" :relyear 2002 :relmonth 6 :relday 11))
		(simpS2 (make-instance 'dvd-release :serialNumber "DVDFOXSIMPSO2" :name "The Simpsons Season 2" :relyear 2002 :relmonth 7  :relday 9))
		(soprS2 (make-instance 'dvd-release :serialNumber "DVDHBOSOPRAS2" :name "The Sopranos Season 2" :relyear 2001 :relmonth 11  :relday 6))
		(xfilS5 (make-instance 'dvd-release :serialNumber "DVDFOXXFILES5" :name "The X-Files Season 5" :relyear 2002 :relmonth 4  :relday 1))
	)

	(add-subscriber btvs rgiles)
	(add-subscriber btvs wrosen)  
	(add-subscriber simpsons msimps)
	(add-subscriber sopranos jsopra)
	(add-subscriber xfiles smulde)
	(add-subscriber xfiles wrosen)

	;"New dvd release test 1"
	(lisp-unit:assert-equal 
		"Hello Willow Rosenberg subscriber to the Buffy the Vampire Slayer DVD release list. The new Dvd Buffy The Vampire Slayer Season 2 will be released on 6/11/2002.  Hello Rupert Giles subscriber to the Buffy the Vampire Slayer DVD release list. The new Dvd Buffy The Vampire Slayer Season 2 will be released on 6/11/2002."
		(new-dvd-release btvs btvsS2))

	;"New dvd release test 2" 	
	(lisp-unit:assert-equal 
		"Hello Maggie Simpson subscriber to the The Simpsons DVD release list. The new Dvd The Simpsons Season 2 will be released on 7/9/2002."
		(new-dvd-release simpsons simpS2))

	; "New dvd release test 3" 	
	(lisp-unit:assert-equal 
		"Hello Junior Soprano subscriber to the The Sopranos DVD release list. The new Dvd The Sopranos Season 2 will be released on 11/6/2001."
		(new-dvd-release sopranos soprS2))

	;"New dvd release test 4" 	
	(lisp-unit:assert-equal 
		"Hello Willow Rosenberg subscriber to the The X-Files DVD release list. The new Dvd The X-Files Season 5 will be released on 4/1/2002.  Hello Samantha Mulder subscriber to the The X-Files DVD release list. The new Dvd The X-Files Season 5 will be released on 4/1/2002."
		(new-dvd-release xfiles xfilS5)
	)

	; "Remove subscriber test" 	
	(lisp-unit:assert-equal 
		nil	
		(eq nil (remove-subscriber xfiles wrosen)))

	(update-dvd-releasedate xfilS5 2002 5 14)

	;"Update dvd test" 	
	(lisp-unit:assert-equal 
		"Hello Samantha Mulder subscriber to the The X-Files DVD release list. The following DVDs release has been revised: The X-Files Season 5 will be released on 5/14/2002."
		(update-dvd xfiles xfilS5))
   )
)

(lisp-unit:write-tap (lisp-unit:run-tests :all))

