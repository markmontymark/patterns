(function() {
  define([], function() {
    var DvdSubscriber;
    return DvdSubscriber = (function() {
      function DvdSubscriber(subscriberName) {
        this.subscriberName = subscriberName;
      }

      DvdSubscriber.prototype.getSubscriberName = function() {
        return this.subscriberName;
      };

      DvdSubscriber.prototype.newDvdRelease = function(newDvdRelease, subscriptionListName) {
        return "Hello " + (this.getSubscriberName()) + " , subscriber to the  " + subscriptionListName + " DVD release list.\nThe new Dvd " + newDvdRelease.dvdName + " will be released on " + newDvdRelease.dvdReleaseMonth + "/" + newDvdRelease.dvdReleaseDay + "/" + newDvdRelease.dvdReleaseYear + ".";
      };

      DvdSubscriber.prototype.updateDvdRelease = function(newDvdRelease, subscriptionListName) {
        return "Hello " + (this.getSubscriberName()) + ", subscriber to the " + subscriptionListName + " DVD release list.\nThe following DVDs release has been revised: " + newDvdRelease.dvdName + " will be released on " + newDvdRelease.dvdReleaseMonth + "/" + newDvdRelease.dvdReleaseDay + "/" + newDvdRelease.dvdReleaseYear;
      };

      return DvdSubscriber;

    })();
  });

}).call(this);
