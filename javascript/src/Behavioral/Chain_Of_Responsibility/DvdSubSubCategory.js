(function() {
  var __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  define(['Behavioral/Chain_Of_Responsibility/TopTitle'], function(TopTitle) {
    var DvdSubSubCategory;
    DvdSubSubCategory = (function(_super) {
      __extends(DvdSubSubCategory, _super);

      DvdSubSubCategory.prototype.subSubCategory = null;

      DvdSubSubCategory.prototype.topSubSubCategoryTitle = null;

      DvdSubSubCategory.prototype.parent = null;

      function DvdSubSubCategory(dvdSubCategory, subCategory) {
        this.setSubSubCategory(subCategory);
        this.parent = dvdSubCategory;
      }

      DvdSubSubCategory.prototype.setSubSubCategory = function(subSubCategoryIn) {
        return this.subSubCategory = subSubCategoryIn;
      };

      DvdSubSubCategory.prototype.getSubSubCategory = function() {
        return this.subSubCategory;
      };

      DvdSubSubCategory.prototype.setSubCategory = function(subCategoryIn) {
        return this.parent.setSubCategory(subCategoryIn);
      };

      DvdSubSubCategory.prototype.getSubCategory = function() {
        return this.parent.getSubCategory();
      };

      DvdSubSubCategory.prototype.setCategory = function(categoryIn) {
        return this.parent.setCategory(categoryIn);
      };

      DvdSubSubCategory.prototype.getCategory = function() {
        return this.parent.getCategory();
      };

      DvdSubSubCategory.prototype.getAllCategories = function() {
        return "" + (this.getCategory()) + "/" + (this.getSubCategory()) + "/" + (this.getSubSubCategory());
      };

      DvdSubSubCategory.prototype.setTopSubSubCategoryTitle = function(topSubSubCategoryTitleIn) {
        return this.topSubSubCategoryTitle = topSubSubCategoryTitleIn;
      };

      DvdSubSubCategory.prototype.getTopSubSubCategoryTitle = function() {
        return this.topSubSubCategoryTitle;
      };

      DvdSubSubCategory.prototype.setTopSubCategoryTitle = function(topSubCategoryTitleIn) {
        return this.parent.setTopSubCategoryTitle(topSubCategoryTitleIn);
      };

      DvdSubSubCategory.prototype.getTopSubCategoryTitle = function() {
        return this.parent.getTopSubCategoryTitle();
      };

      DvdSubSubCategory.prototype.setTopCategoryTitle = function(topCategoryTitleIn) {
        return this.parent.setTopCategoryTitle(topCategoryTitleIn);
      };

      DvdSubSubCategory.prototype.getTopCategoryTitle = function() {
        return this.parent.getTopCategoryTitle();
      };

      DvdSubSubCategory.prototype.getTopTitle = function() {
        if (this.getTopSubSubCategoryTitle()) {
          return this.getTopSubSubCategoryTitle();
        }
        return this.parent.getTopTitle();
      };

      return DvdSubSubCategory;

    })(TopTitle);
    return DvdSubSubCategory;
  });

}).call(this);
