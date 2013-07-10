(function() {
  define(['Behavioral/Observer/DvdReleaseByCategory', 'Behavioral/Observer/DvdSubscriber', 'Behavioral/Observer/DvdRelease'], function(DvdReleaseByCategory, DvdSubscriber, DvdRelease) {
    'use strict';
    return describe('Test Behavioral Observer', function() {
      var btvs, btvsS2, jsopra, msimps, rgiles, simpS2, simpsons, smulde, soprS2, sopranos, wrosen, xfilS5, xfiles;
      btvs = new DvdReleaseByCategory("Buffy the Vampire Slayer");
      simpsons = new DvdReleaseByCategory("The Simpsons");
      sopranos = new DvdReleaseByCategory("The Sopranos");
      xfiles = new DvdReleaseByCategory("The X-Files");
      jsopra = new DvdSubscriber("Junior Soprano");
      msimps = new DvdSubscriber("Maggie Simpson");
      rgiles = new DvdSubscriber("Rupert Giles");
      smulde = new DvdSubscriber("Samantha Mulder");
      wrosen = new DvdSubscriber("Willow Rosenberg");
      btvsS2 = new DvdRelease("DVDFOXBTVSS20", "Buffy The Vampire Slayer Season 2", 2002, 6, 11);
      simpS2 = new DvdRelease("DVDFOXSIMPSO2", "The Simpsons Season 2", 2002, 7, 9);
      soprS2 = new DvdRelease("DVDHBOSOPRAS2", "The Sopranos Season 2", 2001, 11, 6);
      xfilS5 = new DvdRelease("DVDFOXXFILES5", "The X-Files Season 5", 2002, 4, 1);
      it('create a dvdreleasebycategory obj', function() {
        return expect(JSON.stringify(btvs)).toEqual('{"categoryName":"Buffy the Vampire Slayer","subscriberList":[],"dvdReleaseList":[]}');
      });
      it('create a dvdsubscriber obj', function() {
        return expect(JSON.stringify(jsopra)).toEqual('{"subscriberName":"Junior Soprano"}');
      });
      it('add dvdsubscribers', function() {
        expect(btvs.addSubscriber(rgiles)).toEqual(1);
        btvs.addSubscriber(wrosen);
        simpsons.addSubscriber(msimps);
        sopranos.addSubscriber(jsopra);
        xfiles.addSubscriber(smulde);
        return xfiles.addSubscriber(wrosen);
      });
      it('create a dvdrelease obj', function() {
        return expect(JSON.stringify(btvsS2)).toEqual('{"serialNumber":"DVDFOXBTVSS20","dvdName":"Buffy The Vampire Slayer Season 2","dvdReleaseYear":2002,"dvdReleaseMonth":6,"dvdReleaseDay":11}');
      });
      it('observe new dvdrelease', function() {
        expect(btvs.newDvdRelease(btvsS2).toString()).toEqual("Hello Rupert Giles , subscriber to the  Buffy the Vampire Slayer DVD release list.\nThe new Dvd Buffy The Vampire Slayer Season 2 will be released on 6/11/2002.,Hello Willow Rosenberg , subscriber to the  Buffy the Vampire Slayer DVD release list.\nThe new Dvd Buffy The Vampire Slayer Season 2 will be released on 6/11/2002.");
        simpsons.newDvdRelease(simpS2);
        sopranos.newDvdRelease(soprS2);
        return xfiles.newDvdRelease(xfilS5);
      });
      it('remove a subscriber', function() {
        return expect(xfiles.removeSubscriber(wrosen)).toBeTruthy();
      });
      it('update a release', function() {
        return expect(xfilS5.updateDvdReleaseDate(2002, 5, 14).toString()).toEqual('14');
      });
      return it('update a dvd', function() {
        return expect(xfiles.updateDvd(xfilS5).toString()).toEqual("Hello Samantha Mulder, subscriber to the The X-Files DVD release list.\nThe following DVDs release has been revised: The X-Files Season 5 will be released on 5/14/2002,Hello Willow Rosenberg, subscriber to the The X-Files DVD release list.\nThe following DVDs release has been revised: The X-Files Season 5 will be released on 5/14/2002");
      });
    });
  });

}).call(this);
