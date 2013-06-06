package Behavioral.Strategy;

//// Original copy of this content taken from http://www.fluffycat.com/Java-Design-Patterns/ in 2010
//// Original Author: Larry Truett
//// Privacy Policy at http://www.fluffycat.com/Privacy-Policy/
//Strategy (aka Policy) Overview
//An object controls which of a family of methods is called. Each method is in its' own class that extends a common base class.
//Still reading? Save your time, watch the video lessons!
//Video tutorial on design patterns
//DvdNameStrategy.java - the abstract strategy

public abstract class DvdNameStrategy {   
   public abstract String 
     formatDvdName(String dvdName, char charIn);
}