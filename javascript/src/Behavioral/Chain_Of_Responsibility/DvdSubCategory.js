(function() {
  var __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  define(['Behavioral/Chain_Of_Responsibility/TopTitle'], function(TopTitle) {
    var DvdSubCategory;
    DvdSubCategory = (function(_super) {
      __extends(DvdSubCategory, _super);

      DvdSubCategory.prototype.subCategory = null;

      DvdSubCategory.prototype.topSubCategoryTitle = null;

      DvdSubCategory.prototype.parent = null;

      function DvdSubCategory(dvdCategory, subCategory) {
        this.setSubCategory(subCategory);
        this.parent = dvdCategory;
      }

      DvdSubCategory.prototype.setSubCategory = function(subCategoryIn) {
        return this.subCategory = subCategoryIn;
      };

      DvdSubCategory.prototype.getSubCategory = function() {
        return this.subCategory;
      };

      DvdSubCategory.prototype.setCategory = function(categoryIn) {
        return this.parent.setCategory(categoryIn);
      };

      DvdSubCategory.prototype.getCategory = function() {
        return this.parent.getCategory();
      };

      DvdSubCategory.prototype.getAllCategories = function() {
        return "" + (this.getCategory()) + "/" + (this.getSubCategory());
      };

      DvdSubCategory.prototype.setTopSubCategoryTitle = function(topSubCategoryTitleIn) {
        return this.topSubCategoryTitle = topSubCategoryTitleIn;
      };

      DvdSubCategory.prototype.getTopSubCategoryTitle = function() {
        return this.topSubCategoryTitle;
      };

      DvdSubCategory.prototype.setTopCategoryTitle = function(topCategoryTitleIn) {
        return this.parent.setTopCategoryTitle(topCategoryTitleIn);
      };

      DvdSubCategory.prototype.getTopCategoryTitle = function() {
        return this.parent.getTopCategoryTitle();
      };

      DvdSubCategory.prototype.getTopTitle = function() {
        if (this.getTopSubCategoryTitle()) {
          return this.getTopSubCategoryTitle();
        }
        return this.parent.getTopTitle();
      };

      return DvdSubCategory;

    })(TopTitle);
    return DvdSubCategory;
  });

}).call(this);
