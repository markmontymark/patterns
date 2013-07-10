(function() {
  define(['Behavioral/Strategy/DvdNameContext'], function(DvdNameContext) {
    'use strict';
    return describe('Test Behavioral Strategy', function() {
      var allCapContext, dvdNames, replaceChar, spacesContext, theEndContext;
      allCapContext = new DvdNameContext('C');
      theEndContext = new DvdNameContext('E');
      spacesContext = new DvdNameContext('S');
      dvdNames = ["Jay and Silent Bob Strike Back", "The Fast and the Furious", "The Others"];
      replaceChar = '*';
      it("Testing formatting with all caps", function() {
        return expect(allCapContext.formatDvdNames(dvdNames)).toEqual("Dvd name before formatting: Jay and Silent Bob Strike Back\nDvd name after formatting:  JAY AND SILENT BOB STRIKE BACK\n==========================\nDvd name before formatting: The Fast and the Furious\nDvd name after formatting:  THE FAST AND THE FURIOUS\n==========================\nDvd name before formatting: The Others\nDvd name after formatting:  THE OTHERS\n==========================");
      });
      it("Testing formatting with beginning the at end", function() {
        return expect(theEndContext.formatDvdNames(dvdNames)).toEqual("Dvd name before formatting: Jay and Silent Bob Strike Back\nDvd name after formatting:  Jay and Silent Bob Strike Back\n==========================\nDvd name before formatting: The Fast and the Furious\nDvd name after formatting:  Fast and the Furious, The\n==========================\nDvd name before formatting: The Others\nDvd name after formatting:  Others, The\n==========================");
      });
      return it(" Testing formatting with all spaces replaced with " + replaceChar, function() {
        return expect(spacesContext.formatDvdNames(dvdNames, replaceChar)).toEqual("Dvd name before formatting: Jay and Silent Bob Strike Back\nDvd name after formatting:  Jay*and*Silent*Bob*Strike*Back\n==========================\nDvd name before formatting: The Fast and the Furious\nDvd name after formatting:  The*Fast*and*the*Furious\n==========================\nDvd name before formatting: The Others\nDvd name after formatting:  The*Others\n==========================");
      });
    });
  });

}).call(this);
