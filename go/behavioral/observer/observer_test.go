
package observer

import (
	"testing"
	"../../lib/asserts"
)

func TestObserver (t *testing.T) {

	btvs := NewDvdReleaseByCategory("Buffy the Vampire Slayer")
	simpsons := NewDvdReleaseByCategory("The Simpsons")  
	sopranos := NewDvdReleaseByCategory("The Sopranos")
	xfiles := NewDvdReleaseByCategory("The X-Files")

	jsopra := NewDvdSubscriber("Junior Soprano")
	msimps := NewDvdSubscriber("Maggie Simpson")
	rgiles := NewDvdSubscriber("Rupert Giles")
	smulde := NewDvdSubscriber("Samantha Mulder")
	wrosen := NewDvdSubscriber("Willow Rosenberg")

	btvs.AddSubscriber(rgiles)
	btvs.AddSubscriber(wrosen)  
	simpsons.AddSubscriber(msimps)
	sopranos.AddSubscriber(jsopra)
	xfiles.AddSubscriber(smulde)
	xfiles.AddSubscriber(wrosen)

	btvsS2 := NewDvdRelease("DVDFOXBTVSS20", "Buffy The Vampire Slayer Season 2", 2002, 06, 11)
	simpS2 := NewDvdRelease("DVDFOXSIMPSO2", "The Simpsons Season 2", 2002, 07,  9)
	soprS2 := NewDvdRelease("DVDHBOSOPRAS2", "The Sopranos Season 2", 2001, 11,  6)
	xfilS5 := NewDvdRelease("DVDFOXXFILES5", "The X-Files Season 5", 2002, 04,  1)

	asserts.Equals( t, "New dvd release test 1",
		"Hello Rupert Giles, subscriber to the Buffy the Vampire Slayer DVD release list.\nThe new Dvd Buffy The Vampire Slayer Season 2 will be released on 6/11/2002.\nHello Willow Rosenberg, subscriber to the Buffy the Vampire Slayer DVD release list.\nThe new Dvd Buffy The Vampire Slayer Season 2 will be released on 6/11/2002.",
		btvs.NewDvdRelease(btvsS2))

	asserts.Equals( t, "New dvd release test 2", 	
		"Hello Maggie Simpson, subscriber to the The Simpsons DVD release list.\nThe new Dvd The Simpsons Season 2 will be released on 7/9/2002.",
		simpsons.NewDvdRelease(simpS2))

	asserts.Equals( t, "New dvd release test 3", 	
		"Hello Junior Soprano, subscriber to the The Sopranos DVD release list.\nThe new Dvd The Sopranos Season 2 will be released on 11/6/2001.",
		sopranos.NewDvdRelease(soprS2))

	asserts.Equals( t, "New dvd release test 4", 	
		"Hello Samantha Mulder, subscriber to the The X-Files DVD release list.\nThe new Dvd The X-Files Season 5 will be released on 4/1/2002.\nHello Willow Rosenberg, subscriber to the The X-Files DVD release list.\nThe new Dvd The X-Files Season 5 will be released on 4/1/2002.",
		xfiles.NewDvdRelease(xfilS5))

	asserts.True( t, "Remove subscriber test", 	
		xfiles.RemoveSubscriber(wrosen))

	xfilS5.UpdateDvdReleaseDate(2002, 5, 14)

	asserts.Equals( t, "Update dvd test", 	
		"Hello Samantha Mulder, subscriber to the The X-Files DVD release list.\nThe following DVDs release has been revised: The X-Files Season 5 will be released on 5/14/2002.",
		xfiles.UpdateDvd(xfilS5))
}
