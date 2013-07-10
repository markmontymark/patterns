(function() {
  define(['Behavioral/Memento/DvdDetails', 'Behavioral/Memento/DvdMemento'], function(DvdDetails, DvdMemento) {
    'use strict';
    return describe('Test Behavioral Memento', function() {
      var dvdDetails, dvdMementoCaretaker, stars;
      dvdMementoCaretaker = null;
      stars = ["Guy Pearce"];
      dvdDetails = new DvdDetails("Memento", stars, '1');
      dvdMementoCaretaker = dvdDetails.createDvdMemento();
      it("as first instantiated", function() {
        return expect(dvdDetails.formatDvdDetails()).toEqual('DVD: Memento starring: Guy Pearce encoding region: 1');
      });
      it('oops - Cappuccino on the keyboard!', function() {
        dvdDetails.addStar("edskdzkvdfb");
        return expect(dvdDetails.formatDvdDetails()).toEqual('DVD: Memento starring: Guy Pearce, edskdzkvdfb encoding region: 1');
      });
      return it('back off changes', function() {
        dvdDetails.setDvdMemento(dvdMementoCaretaker);
        return expect(dvdDetails.formatDvdDetails()).toEqual('DVD: Memento starring: Guy Pearce encoding region: 1');
      });
    });
  });

}).call(this);
