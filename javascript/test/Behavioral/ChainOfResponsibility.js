(function() {
  define(['Behavioral/Chain_Of_Responsibility/DvdCategory', 'Behavioral/Chain_Of_Responsibility/DvdSubCategory', 'Behavioral/Chain_Of_Responsibility/DvdSubSubCategory'], function(DvdCategory, DvdSubCategory, DvdSubSubCategory) {
    'use strict';
    return describe('Test Behavioral Chain Of Responsibility', function() {
      var comedy, comedyChildrens, comedyChildrensAquatic, topTitle;
      topTitle = null;
      comedy = new DvdCategory("Comedy");
      comedy.setTopCategoryTitle("Ghost World");
      comedyChildrens = new DvdSubCategory(comedy, "Childrens");
      comedyChildrensAquatic = new DvdSubSubCategory(comedyChildrens, "Aquatic");
      comedyChildrensAquatic.setTopSubSubCategoryTitle("Sponge Bob Squarepants");
      it("Getting top comedy title:", function() {
        topTitle = comedy.getTopTitle();
        return expect("The top title for " + comedy.getAllCategories() + " is " + topTitle).toEqual("The top title for Comedy is Ghost World");
      });
      it("Getting top comedy/childrens title:", function() {
        topTitle = comedyChildrens.getTopTitle();
        return expect("The top title for " + comedyChildrens.getAllCategories() + " is " + topTitle).toEqual("The top title for Comedy/Childrens is Ghost World");
      });
      return it("Getting top comedy/childrens/aquatic title:", function() {
        topTitle = comedyChildrensAquatic.getTopTitle();
        return expect("The top title for " + comedyChildrensAquatic.getAllCategories() + " is " + topTitle).toEqual("The top title for Comedy/Childrens/Aquatic is Sponge Bob Squarepants");
      });
    });
  });

}).call(this);
