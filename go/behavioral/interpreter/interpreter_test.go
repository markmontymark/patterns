//Interpreter.java - testing the Interpreter


package interpreter

import (
	"testing"
	"../../lib/asserts"
)

func TestInterpreter (t *testing.T) {

	ctx := NewDvdInterpreterContext()

	ctx.AddTitleAndActor( NewTitleAndActor("Hamlet", "Ethan Hawke"))
	ctx.AddTitleAndActor( NewTitleAndActor("Training Day", "Ethan Hawke"))
	ctx.AddTitleAndActor( NewTitleAndActor("Caddy Shack", "Ethan Hawke"))
	ctx.AddTitleAndActor( NewTitleAndActor("Training Day", "Denzel Washington"))

	client := NewDvdInterpreterClient(ctx)

	asserts.Equals( t, "interpreting show actor: " , 
		client.Interpret( "show actor"),
		"Query Result: Denzel Washington, Ethan Hawke")


	asserts.Equals( t, "interpreting show title: "  , 
		client.Interpret( "show title"),
		"Query Result: Caddy Shack, Hamlet, Training Day")

	asserts.Equals( t, "interpreting show actor for title : " , 
		client.Interpret( "show actor for title "),
		"Query Result: ")

	asserts.Equals( t, "interpreting show title for actor : " , 
		client.Interpret( "show title for actor "),
		"Query Result: ")

	asserts.Equals( t, "interpreting show actor for title <Training Day>: " , 
		client.Interpret( "show actor for title <Training Day>"),
		"Query Result: Denzel Washington, Ethan Hawke")

	asserts.Equals( t, "interpreting show title for actor <Ethan Hawke>: " , 
		client.Interpret( "show title for actor <Ethan Hawke>"),
		"Query Result: Caddy Shack, Hamlet, Training Day")
		
}      
