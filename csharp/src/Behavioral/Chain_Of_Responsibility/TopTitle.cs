//// Original copy of this content taken from http://www.fluffycat.com/Java-Design-Patterns/ in 2010
//// Original Author: Larry Truett
//// Privacy Policy at http://www.fluffycat.com/Privacy-Policy/
//Chain of Responsibility Overview
//A method called in one class will move up a class hierarchy until a method is found that can properly handle the call.
//TopTitle.cs - the Interface to be implemented by all Classes in the Chain



namespace Behavioral.Chain_Of_Responsibility
{

using System;

	public interface TopTitle 
	{  
		String getTopTitle();
		String getAllCategories();
	}
}
