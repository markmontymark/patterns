(function() {
  define([], function() {
    var TitleAndActor;
    return TitleAndActor = (function() {
      function TitleAndActor(title, actor) {
        this.title = title;
        this.actor = actor;
      }

      TitleAndActor.prototype.getTitle = function() {
        return this.title;
      };

      TitleAndActor.prototype.getActor = function() {
        return this.actor;
      };

      return TitleAndActor;

    })();
  });

}).call(this);
