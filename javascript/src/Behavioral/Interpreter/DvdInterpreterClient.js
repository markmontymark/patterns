(function() {
  define(['Behavioral/Interpreter/DvdActorExpression', 'Behavioral/Interpreter/DvdTitleExpression', 'Behavioral/Interpreter/DvdTitleActorExpression', 'Behavioral/Interpreter/DvdActorTitleExpression'], function(DvdActorExpression, DvdTitleExpression, DvdTitleActorExpression, DvdActorTitleExpression) {
    var DvdInterpreterClient;
    return DvdInterpreterClient = (function() {
      function DvdInterpreterClient(ctx) {
        this.ctx = ctx;
      }

      DvdInterpreterClient.prototype.interpret = function(expression) {
        var currentToken, expr, forUsed, mainQuery, result, searchEnded, searchStarted, searchString, subQuery, _i, _len, _ref;
        result = ["Query Result: "];
        mainQuery = ' ';
        subQuery = ' ';
        forUsed = false;
        searchString = null;
        searchStarted = false;
        searchEnded = false;
        _ref = expression.split(' ');
        for (_i = 0, _len = _ref.length; _i < _len; _i++) {
          currentToken = _ref[_i];
          if (currentToken === "show") {
            continue;
          }
          if (currentToken === "title") {
            if (mainQuery === ' ') {
              mainQuery = 'T';
            } else {
              if (forUsed && subQuery === ' ') {
                subQuery = 'T';
              }
            }
          } else if (currentToken === "actor") {
            if (mainQuery === ' ') {
              mainQuery = 'A';
            } else {
              if (forUsed && subQuery === ' ') {
                subQuery = 'A';
              }
            }
          } else if (currentToken === 'for') {
            forUsed = true;
          } else if (searchString === null && subQuery !== ' ' && currentToken[0] === "<") {
            searchString = currentToken;
            searchStarted = true;
            if (currentToken.endsWith(">")) {
              searchEnded = true;
            }
          } else if (searchStarted && !searchEnded) {
            searchString += " " + currentToken;
            if (currentToken.endsWith(">")) {
              searchEnded = true;
            }
          }
        }
        if (searchString) {
          searchString = searchString.substring(1, searchString.length() - 1);
        }
        expr = null;
        switch (mainQuery) {
          case 'A':
            switch (subQuery) {
              case 'T':
                expr = new DvdActorTitleExpression(searchString);
                break;
              default:
                expr = new DvdActorExpression();
            }
            break;
          case 'T':
            switch (subQuery) {
              case 'A':
                expr = new DvdTitleActorExpression(searchString);
                break;
              default:
                expr = new DvdTitleExpression();
            }
            break;
          default:
            return result.toString();
        }
        result.push(expr.interpret(this.ctx));
        return result.toString();
      };

      return DvdInterpreterClient;

    })();
  });

}).call(this);
