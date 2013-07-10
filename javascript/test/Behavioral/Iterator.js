(function() {
  define(['Behavioral/Iterator/DvdList'], function(DvdList) {
    'use strict';
    return describe('Test Behavioral Iterator', function() {
      var fiveShakespeareIterator, fiveShakespeareMovies;
      fiveShakespeareMovies = new DvdList();
      fiveShakespeareMovies.append("10 Things I Hate About You");
      fiveShakespeareMovies.append("Shakespeare In Love");
      fiveShakespeareMovies.append("O (2001)");
      fiveShakespeareMovies.append("American Pie 2");
      fiveShakespeareMovies.append("Scotland, PA.");
      fiveShakespeareMovies.append("Hamlet (2000)");
      fiveShakespeareIterator = fiveShakespeareMovies.createIterator();
      it('first iteration', function() {
        var retval;
        retval = [];
        while (!fiveShakespeareIterator.isDone()) {
          retval.push(fiveShakespeareIterator.currentItem().toString());
          fiveShakespeareIterator.next();
        }
        return expect(retval.join(', ')).toEqual("10 Things I Hate About You, Shakespeare In Love, O (2001), American Pie 2, Scotland, PA., Hamlet (2000)");
      });
      return it('second iteration', function() {
        var retval;
        fiveShakespeareMovies.remove("American Pie 2");
        retval = [];
        fiveShakespeareIterator.first();
        while (!fiveShakespeareIterator.isDone()) {
          retval.push(fiveShakespeareIterator.currentItem().toString());
          fiveShakespeareIterator.next();
        }
        return expect(retval.join(', ')).toEqual("10 Things I Hate About You, Shakespeare In Love, O (2001), Scotland, PA., Hamlet (2000)");
      });
    });
  });

}).call(this);
