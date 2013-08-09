require "tapper"
require "Behavioral/Observer"

extend Tapper


btvs = DvdReleaseByCategory.new("Buffy the Vampire Slayer")
simpsons = DvdReleaseByCategory.new("The Simpsons")  
sopranos = DvdReleaseByCategory.new("The Sopranos")
xfiles = DvdReleaseByCategory.new("The X-Files")

jsopra = DvdSubscriber.new("Junior Soprano")
msimps = DvdSubscriber.new("Maggie Simpson")
rgiles = DvdSubscriber.new("Rupert Giles")
smulde = DvdSubscriber.new("Samantha Mulder")
wrosen = DvdSubscriber.new("Willow Rosenberg")

btvs.addSubscriber(rgiles)
btvs.addSubscriber(wrosen)  
simpsons.addSubscriber(msimps)
sopranos.addSubscriber(jsopra)
xfiles.addSubscriber(smulde)
xfiles.addSubscriber(wrosen)

btvsS2 = DvdRelease.new("DVDFOXBTVSS20", "Buffy The Vampire Slayer Season 2", 2002, 6, 11)
simpS2 = DvdRelease.new("DVDFOXSIMPSO2", "The Simpsons Season 2", 2002, 7,  9)
soprS2 = DvdRelease.new("DVDHBOSOPRAS2", "The Sopranos Season 2", 2001, 11,  6)
xfilS5 = DvdRelease.new("DVDFOXXFILES5", "The X-Files Season 5", 2002, 4,  1)

test "first newDvdRelease test " do
	assert_equal( btvs.newDvdRelease(btvsS2), "Hello Rupert Giles, subscriber to the Buffy the Vampire Slayer DVD release list.\nThe new Dvd Buffy The Vampire Slayer Season 2 will be released on 6/11/2002.\nHello Willow Rosenberg, subscriber to the Buffy the Vampire Slayer DVD release list.\nThe new Dvd Buffy The Vampire Slayer Season 2 will be released on 6/11/2002.\n")
end


test "second newDvdRelease test " do 
	assert_equal( simpsons.newDvdRelease(simpS2), "Hello Maggie Simpson, subscriber to the The Simpsons DVD release list.\nThe new Dvd The Simpsons Season 2 will be released on 7/9/2002.\n")
end

test "third newDvdRelease test " do
	assert_equal( sopranos.newDvdRelease(soprS2), "Hello Junior Soprano, subscriber to the The Sopranos DVD release list.\nThe new Dvd The Sopranos Season 2 will be released on 11/6/2001.\n")
end

test "fourth newDvdRelease test " do
	assert_equal( xfiles.newDvdRelease(xfilS5), "Hello Samantha Mulder, subscriber to the The X-Files DVD release list.\nThe new Dvd The X-Files Season 5 will be released on 4/1/2002.\nHello Willow Rosenberg, subscriber to the The X-Files DVD release list.\nThe new Dvd The X-Files Season 5 will be released on 4/1/2002.\n")
end

test "test removing a subscriber" do
	assert_equal( xfiles.removeSubscriber(wrosen), true )
end

xfilS5.updateDvdReleaseDate(2002, 5, 14)

test "update Dvd test" do
	assert_equal( xfiles.updateDvd(xfilS5), "Hello Samantha Mulder, subscriber to the The X-Files DVD release list.\nThe following DVDs release has been revised: The X-Files Season 5 will be released on 5/14/2002.\n")
end

done
