(function() {
  define(['Behavioral/Template_Method/DvdTitleInfo', 'Behavioral/Template_Method/BookTitleInfo', 'Behavioral/Template_Method/GameTitleInfo'], function(DvdTitleInfo, BookTitleInfo, GameTitleInfo) {
    'use strict';
    return describe('Test Behavioral Template Method', function() {
      return it('Can create 3 title infos', function() {
        var bladeRunner, electricSheep, sheepRaider;
        bladeRunner = new DvdTitleInfo("Blade Runner", "Harrison Ford", '1');
        electricSheep = new BookTitleInfo("Do Androids Dream of Electric Sheep?", "Phillip K. Dick");
        sheepRaider = new GameTitleInfo("Sheep Raider");
        expect("Testing bladeRunner   " + bladeRunner.ProcessTitleInfo()).toEqual('Testing bladeRunner   DVD: Blade Runner, starring Harrison Ford ,, encoding region: 1');
        expect("Testing electricSheep " + electricSheep.ProcessTitleInfo()).toEqual('Testing electricSheep Book: Do Androids Dream of Electric Sheep?, Author: Phillip K. Dick, ');
        return expect("Testing sheepRaider   " + sheepRaider.ProcessTitleInfo()).toEqual('Testing sheepRaider   Game: Sheep Raider, ');
      });
    });
  });

}).call(this);
