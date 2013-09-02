package visitor

type Acceptor interface {
	Accept( tbv Visitor )
}
	

