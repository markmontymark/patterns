(function() {
  var __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  define(['Behavioral/Chain_Of_Responsibility/TopTitle'], function(TopTitle) {
    var DvdCategory;
    DvdCategory = (function(_super) {
      __extends(DvdCategory, _super);

      DvdCategory.prototype.category = null;

      DvdCategory.prototype.topCategoryTitle = null;

      function DvdCategory(category) {
        this.setCategory(category);
      }

      DvdCategory.prototype.setCategory = function(categoryIn) {
        return this.category = categoryIn;
      };

      DvdCategory.prototype.getCategory = function() {
        return this.category;
      };

      DvdCategory.prototype.getAllCategories = function() {
        return this.getCategory();
      };

      DvdCategory.prototype.setTopCategoryTitle = function(topCategoryTitleIn) {
        return this.topCategoryTitle = topCategoryTitleIn;
      };

      DvdCategory.prototype.getTopCategoryTitle = function() {
        return this.topCategoryTitle;
      };

      DvdCategory.prototype.getTopTitle = function() {
        return this.topCategoryTitle;
      };

      return DvdCategory;

    })(TopTitle);
    return DvdCategory;
  });

}).call(this);
