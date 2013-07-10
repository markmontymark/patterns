(function() {
  define(['Behavioral/State/DvdStateContext'], function(DvdStateContext) {
    'use strict';
    return describe('Test Behavioral State', function() {
      return it('Run through the states', function() {
        var stateContext;
        stateContext = new DvdStateContext();
        expect(stateContext.showName('Sponge Bob Squarepants - Nautical Nonsense and Sponge Buddies')).toEqual('Sponge*Bob Squarepants - Nautical Nonsense and Sponge Buddies');
        expect(stateContext.showName('Jay and Silent Bob Strike Back')).toEqual('Jay*and Silent Bob Strike Back');
        expect(stateContext.showName('Buffy The Vampire Slayer Season 2')).toEqual('Buffy!The Vampire Slayer Season 2');
        return expect(stateContext.showName('The Sopranos Season 2')).toEqual('The*Sopranos Season 2');
      });
    });
  });

}).call(this);
