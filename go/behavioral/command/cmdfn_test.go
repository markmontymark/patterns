package command

import (
	"fmt"
	"testing"
	"../../lib/asserts"
)

/*Four terms always associated with the command pattern are 
	command, receiver, invoker and client

A command object has a receiver object and invokes a method of the receiver. 
The receiver then does the work. 
A command object is separately passed to an invoker object, which invokes the command, and optionally does bookkeeping about the command execution. 
Any command object can be passed to the same invoker object. 
Both an invoker object and several command objects are held by a client object. 
The client contains the decision making about which commands to execute at which points. 
To execute a command, it passes the command object to the invoker object. */

type register struct {
	till int
	n_purchases int
}

func make_cash_register () *register {
	return &register{}
}

func add_cash (r *register, num int) {
	r.till += num
}

func reset (r *register) {
	r.till = 0
}

func make_purchase (r *register, amt int) func () {
	return func () {
		fmt.Println("Purchase in amount: %v ", amt)
		add_cash( r, amt)
	}
}

var purchases = make([]func(),0)

func execute_purchases (purchase ...func () ) {
	for _,p := range purchase {
		p()
		purchases = append(purchases,p)
	}
}


func TestCommand( t *testing.T) {            
	reg := make_cash_register()
	p1 := make_purchase(reg, 50)
	p2 := make_purchase(reg,100)
	execute_purchases( p1, p2)
	asserts.IntEquals(t, "stars on jb test ", reg.till, 150)
}      


