(function() {
  define(['Behavioral/Visitor/DvdInfo', 'Behavioral/Visitor/BookInfo', 'Behavioral/Visitor/GameInfo', 'Behavioral/Visitor/TitleLongBlurbVisitor', 'Behavioral/Visitor/TitleShortBlurbVisitor'], function(DvdInfo, BookInfo, GameInfo, TitleLongBlurbVisitor, TitleShortBlurbVisitor) {
    'use strict';
    return describe('Test Behavioral Visitor', function() {
      var bladeRunner, electricSheep, sheepRaider;
      bladeRunner = new DvdInfo("Blade Runner", "Harrison Ford", '1');
      electricSheep = new BookInfo("Do Androids Dream of Electric Sheep?", "Phillip K. Dick");
      sheepRaider = new GameInfo("Sheep Raider");
      it("Long Blurbs:", function() {
        var titleLongBlurbVisitor;
        titleLongBlurbVisitor = new TitleLongBlurbVisitor();
        bladeRunner.accept(titleLongBlurbVisitor);
        expect("Testing bladeRunner   " + titleLongBlurbVisitor.getTitleBlurb()).toEqual('Testing bladeRunner   LB-DVD: Blade Runner, starring Harrison Ford, encoding region: 1');
        electricSheep.accept(titleLongBlurbVisitor);
        expect("Testing electricSheep " + titleLongBlurbVisitor.getTitleBlurb()).toEqual('Testing electricSheep LB-Book: Do Androids Dream of Electric Sheep?, Author: Phillip K. Dick');
        sheepRaider.accept(titleLongBlurbVisitor);
        return expect("Testing sheepRaider   " + titleLongBlurbVisitor.getTitleBlurb()).toEqual('Testing sheepRaider   LB-Game: Sheep Raider');
      });
      return it("Short Blurbs:", function() {
        var titleShortBlurbVisitor;
        titleShortBlurbVisitor = new TitleShortBlurbVisitor();
        bladeRunner.accept(titleShortBlurbVisitor);
        expect("Testing bladeRunner   " + titleShortBlurbVisitor.getTitleBlurb()).toEqual("Testing bladeRunner   SB-DVD: Blade Runner");
        electricSheep.accept(titleShortBlurbVisitor);
        expect("Testing electricSheep " + titleShortBlurbVisitor.getTitleBlurb()).toEqual("Testing electricSheep SB-Book: Do Androids Dream of Electric Sheep?");
        sheepRaider.accept(titleShortBlurbVisitor);
        return expect("Testing sheepRaider   " + titleShortBlurbVisitor.getTitleBlurb()).toEqual('Testing sheepRaider   SB-Game: Sheep Raider');
      });
    });
  });

}).call(this);
