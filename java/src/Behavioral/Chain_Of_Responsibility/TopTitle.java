package Behavioral.Chain_Of_Responsibility;

//// Original copy of this content taken from http://www.fluffycat.com/Java-Design-Patterns/ in 2010
//// Original Author: Larry Truett
//// Privacy Policy at http://www.fluffycat.com/Privacy-Policy/
//Chain of Responsibility Overview
//A method called in one class will move up a class hierarchy until a method is found that can properly handle the call.
//TopTitle.java - the Interface to be implemented by all Classes in the Chain

public interface TopTitle {  
   public String getTopTitle();
   
   public String getAllCategories();
}