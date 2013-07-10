(function() {
  define(['Behavioral/Command/DvdName', 'Behavioral/Command/DvdCommandNameStarsOn', 'Behavioral/Command/DvdCommandNameStarsOff'], function(DvdName, DvdCommandNameStarsOn, DvdCommandNameStarsOff) {
    'use strict';
    return describe('Test Behavioral Command', function() {
      var bobStarsOff, bobStarsOn, jayAndBob, spongeBob, spongeStarsOff, spongeStarsOn;
      jayAndBob = new DvdName('Jay and Silent Bob Strike Back');
      spongeBob = new DvdName('Sponge Bob Squarepants - Nautical Nonsense and Sponge Buddies');
      bobStarsOn = new DvdCommandNameStarsOn(jayAndBob);
      bobStarsOff = new DvdCommandNameStarsOff(jayAndBob);
      spongeStarsOn = new DvdCommandNameStarsOn(spongeBob);
      spongeStarsOff = new DvdCommandNameStarsOff(spongeBob);
      it('as first instantiated', function() {
        expect(jayAndBob.toString()).toEqual('DVD: Jay and Silent Bob Strike Back');
        expect(spongeBob.toString()).toEqual('DVD: Sponge Bob Squarepants - Nautical Nonsense and Sponge Buddies');
        return expect(JSON.stringify(spongeStarsOn)).toEqual('{"dvdName":{"titleName":"Sponge Bob Squarepants - Nautical Nonsense and Sponge Buddies"}}');
      });
      it('stars on', function() {
        bobStarsOn.execute();
        spongeStarsOn.execute();
        expect(jayAndBob.toString()).toEqual('DVD: Jay*and Silent Bob Strike Back');
        return expect(spongeBob.toString()).toEqual('DVD: Sponge*Bob Squarepants - Nautical Nonsense and Sponge Buddies');
      });
      return it('sponge stars off', function() {
        spongeStarsOff.execute();
        expect(jayAndBob.toString()).toEqual('DVD: Jay*and Silent Bob Strike Back');
        return expect(spongeBob.toString()).toEqual('DVD: Sponge Bob Squarepants - Nautical Nonsense and Sponge Buddies');
      });
    });
  });

}).call(this);
