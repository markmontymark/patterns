(function() {
  define(['Behavioral/Mediator/DvdMediator', 'Behavioral/Mediator/DvdLowercaseTitle', 'Behavioral/Mediator/DvdUpcaseTitle'], function(DvdMediator, DvdLowercaseTitle, DvdUpcaseTitle) {
    'use strict';
    return describe('Test Behavioral Mediator', function() {
      var dvdLower, dvdMediator, dvdUp;
      dvdMediator = new DvdMediator();
      dvdLower = new DvdLowercaseTitle("Mulholland Dr.", dvdMediator);
      dvdUp = new DvdUpcaseTitle(dvdLower, dvdMediator);
      it('before using super', function() {
        expect("Lowercase LC title :" + dvdLower.getLowercaseTitle()).toEqual('Lowercase LC title :mulholland dr.');
        expect("Lowercase super title :" + dvdLower.getTitle()).toEqual('Lowercase super title :Mulholland Dr.');
        expect("Upcase UC title :" + dvdUp.getUpcaseTitle()).toEqual('Upcase UC title :MULHOLLAND DR.');
        return expect("Upcase super title :" + dvdUp.getTitle()).toEqual('Upcase super title :Mulholland Dr.');
      });
      return it('after using super', function() {
        dvdLower.setSuperTitleLowercase();
        expect("Lowercase LC title :" + dvdLower.getLowercaseTitle()).toEqual('Lowercase LC title :mulholland dr.');
        expect("Lowercase super title :" + dvdLower.getTitle()).toEqual('Lowercase super title :mulholland dr.');
        expect("Upcase UC title :" + dvdUp.getUpcaseTitle()).toEqual('Upcase UC title :MULHOLLAND DR.');
        return expect("Upcase super title :" + dvdUp.getTitle()).toEqual('Upcase super title :mulholland dr.');
      });
    });
  });

}).call(this);
