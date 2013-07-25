


#/// Original copy of this content taken from http://www.fluffycat.com/Java-Design-Patterns/ in 2010
#/// Original Author: Larry Truett
#/// Privacy Policy at http://www.fluffycat.com/Privacy-Policy/
#/Iterator (aka Cursor) Overview
#/One object can traverse all of the elements of another object.
#/DvdListIterator.java - the Iterator Interface

define [],()->
	class IteratorInterface
		first : -> throw 'Unimplemented method, IteratorInterface.first'
		next : -> throw 'Unimplemented method, IteratorInterface.next'
		isDone : -> throw 'Unimplemented method, IteratorInterface.isDone'
		currentItem : -> throw 'Unimplemented method, IteratorInterface.currentItem'

