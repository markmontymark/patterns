(function() {
  define(['Structural/Composite/TinOfTeaBags', 'Structural/Composite/OneTeaBag'], function(TinOfTeaBags, OneTeaBag) {
    'use strict';
    return describe('Test Structural Adapter', function() {
      return it('Creating tinOfTeaBags', function() {
        var smallTinOfTeaBags, teaBag1, teaBag2, teaBag3, tinOfTeaBags;
        tinOfTeaBags = new TinOfTeaBags("tin of tea bags");
        expect("The tinOfTeaBags has " + (tinOfTeaBags.countTeaBags()) + " tea bags in it.").toEqual("The tinOfTeaBags has 0 tea bags in it.");
        teaBag1 = new OneTeaBag("tea bag 1");
        expect("The teaBag1 has " + (teaBag1.countTeaBags()) + " tea bags in it.").toEqual("The teaBag1 has 1 tea bags in it.");
        teaBag2 = new OneTeaBag("tea bag 2");
        expect("The teaBag2 has " + (teaBag2.countTeaBags()) + " tea bags in it.").toEqual("The teaBag2 has 1 tea bags in it.");
        expect(tinOfTeaBags.add(teaBag1)).toBeTruthy();
        expect(tinOfTeaBags.add(teaBag2)).toBeTruthy();
        expect("The tinOfTeaBags now has " + (tinOfTeaBags.countTeaBags()) + " tea bags in it.").toEqual("The tinOfTeaBags now has 2 tea bags in it.");
        smallTinOfTeaBags = new TinOfTeaBags("small tin of tea bags");
        expect("The smallTinOfTeaBags has " + (smallTinOfTeaBags.countTeaBags()) + " tea bags in it.").toEqual("The smallTinOfTeaBags has 0 tea bags in it.");
        teaBag3 = new OneTeaBag("tea bag 3");
        expect(smallTinOfTeaBags.add(teaBag3)).toBeTruthy();
        expect("The smallTinOfTeaBags now has " + (smallTinOfTeaBags.countTeaBags()) + " tea bags in it.").toEqual("The smallTinOfTeaBags now has 1 tea bags in it.");
        expect(tinOfTeaBags.add(smallTinOfTeaBags)).toBeTruthy();
        expect("The tinOfTeaBags now has " + (tinOfTeaBags.countTeaBags()) + " tea bags in it.").toEqual("The tinOfTeaBags now has 3 tea bags in it.");
        expect(tinOfTeaBags.remove(teaBag2)).toBeTruthy();
        return expect("The tinOfTeaBags now has " + (tinOfTeaBags.countTeaBags()) + " tea bags in it.").toEqual("The tinOfTeaBags now has 2 tea bags in it.");
      });
    });
  });

}).call(this);
