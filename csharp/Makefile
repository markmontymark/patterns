.PHONY: all build test install clean distclean purge

CSC  = dmcs -debug+ -warnaserror -d:DEBUG
DESTDIR= 
BLIB   = blib
CILLIB  = $(PWD)/$(BLIB)/lib:$(PWD)/lib
CP     = cp -p
MKDIR  = mkdir -p


BLIB_EXES = $(BLIB)/tap/tap.dll $(BLIB)/common/common.dll $(BLIB)/Behavioral/Chain_Of_Responsibility.exe $(BLIB)/Behavioral/Command.exe $(BLIB)/Behavioral/Interpreter.exe $(BLIB)/Behavioral/Iterator.exe $(BLIB)/Behavioral/Mediator.exe $(BLIB)/Behavioral/Memento.exe $(BLIB)/Behavioral/Observer.exe $(BLIB)/Behavioral/State.exe $(BLIB)/Behavioral/Strategy.exe $(BLIB)/Behavioral/Template_Method.exe $(BLIB)/Behavioral/Visitor.exe $(BLIB)/Structural/Adapter.exe $(BLIB)/Structural/Bridge.exe $(BLIB)/Structural/Composite.exe $(BLIB)/Structural/Decorator.exe $(BLIB)/Structural/Facade.exe $(BLIB)/Structural/Flyweight.exe $(BLIB)/Structural/Proxy.exe $(BLIB)/Creational/Abstract_Factory.exe $(BLIB)/Creational/Builder.exe $(BLIB)/Creational/Factory_Method.exe $(BLIB)/Creational/Prototype.exe $(BLIB)/Creational/Singleton.exe

build: $(BLIB_EXES)

$(BLIB)/tap/tap.dll : src/tap/*.cs
	$(MKDIR) $(BLIB)/tap/
	CILLIB=$(CILLIB) $(CSC) -target:library -out:$(BLIB)/tap/tap.dll src/tap/*.cs

$(BLIB)/common/common.dll : src/common/*.cs
	$(MKDIR) $(BLIB)/common/
	CILLIB=$(CILLIB) $(CSC) -target:library -out:$(BLIB)/common/common.dll src/common/*.cs


$(BLIB)/Behavioral/Chain_Of_Responsibility.exe : src/Behavioral/Chain_Of_Responsibility/*.cs
	$(MKDIR) $(BLIB)/Behavioral/
	$(CSC) -reference:$(BLIB)/tap/tap.dll -out:$(BLIB)/Behavioral/Chain_Of_Responsibility.exe src/Behavioral/Chain_Of_Responsibility/*.cs -main:Behavioral.Chain_Of_Responsibility.TestChainOfResponsibility

$(BLIB)/Behavioral/Command.exe : src/Behavioral/Command/*.cs
	$(MKDIR) $(BLIB)/Behavioral/
	$(CSC) -reference:$(BLIB)/tap/tap.dll -out:$(BLIB)/Behavioral/Command.exe src/Behavioral/Command/*.cs -main:Behavioral.Command.TestCommand

$(BLIB)/Behavioral/Interpreter.exe : src/Behavioral/Interpreter/*.cs
	$(MKDIR) $(BLIB)/Behavioral/
	$(CSC) -reference:$(BLIB)/tap/tap.dll -out:$(BLIB)/Behavioral/Interpreter.exe src/Behavioral/Interpreter/*.cs -main:Behavioral.Interpreter.TestInterpreter

$(BLIB)/Behavioral/Iterator.exe : src/Behavioral/Iterator/*.cs
	$(MKDIR) $(BLIB)/Behavioral/
	$(CSC) -reference:$(BLIB)/tap/tap.dll -out:$(BLIB)/Behavioral/Iterator.exe src/Behavioral/Iterator/*.cs -main:Behavioral.Iterator.TestIterator

$(BLIB)/Behavioral/Mediator.exe : src/Behavioral/Mediator/*.cs
	$(MKDIR) $(BLIB)/Behavioral/
	$(CSC) -reference:$(BLIB)/tap/tap.dll -out:$(BLIB)/Behavioral/Mediator.exe src/Behavioral/Mediator/*.cs -main:Behavioral.Mediator.TestMediator

$(BLIB)/Behavioral/Memento.exe : src/Behavioral/Memento/*.cs
	$(MKDIR) $(BLIB)/Behavioral/
	$(CSC) -reference:$(BLIB)/tap/tap.dll -out:$(BLIB)/Behavioral/Memento.exe src/Behavioral/Memento/*.cs -main:Behavioral.Memento.TestMemento

$(BLIB)/Behavioral/Observer.exe : src/Behavioral/Observer/*.cs
	$(MKDIR) $(BLIB)/Behavioral/
	$(CSC) -reference:$(BLIB)/tap/tap.dll -out:$(BLIB)/Behavioral/Observer.exe src/Behavioral/Observer/*.cs -main:Behavioral.Observer.TestObserver

$(BLIB)/Behavioral/State.exe : src/Behavioral/State/*.cs
	$(MKDIR) $(BLIB)/Behavioral/
	$(CSC) -reference:$(BLIB)/tap/tap.dll -out:$(BLIB)/Behavioral/State.exe src/Behavioral/State/*.cs -main:Behavioral.State.TestState

$(BLIB)/Behavioral/Strategy.exe : src/Behavioral/Strategy/*.cs
	$(MKDIR) $(BLIB)/Behavioral/
	$(CSC) -reference:$(BLIB)/tap/tap.dll -out:$(BLIB)/Behavioral/Strategy.exe src/Behavioral/Strategy/*.cs -main:Behavioral.Strategy.TestStrategy

$(BLIB)/Behavioral/Template_Method.exe : src/Behavioral/Template_Method/*.cs
	$(MKDIR) $(BLIB)/Behavioral/
	$(CSC) -reference:$(BLIB)/tap/tap.dll -out:$(BLIB)/Behavioral/Template_Method.exe src/Behavioral/Template_Method/*.cs -main:Behavioral.Template_Method.TestTemplateMethod

$(BLIB)/Behavioral/Visitor.exe : src/Behavioral/Visitor/*.cs
	$(MKDIR) $(BLIB)/Behavioral/
	$(CSC) -reference:$(BLIB)/tap/tap.dll -out:$(BLIB)/Behavioral/Visitor.exe src/Behavioral/Visitor/*.cs -main:Behavioral.Visitor.TestVisitor

$(BLIB)/Creational/Abstract_Factory.exe : src/Creational/Abstract_Factory/*.cs
	$(MKDIR) $(BLIB)/Creational/
	$(CSC) -reference:$(BLIB)/tap/tap.dll -reference:$(BLIB)/common/common.dll -out:$(BLIB)/Creational/Abstract_Factory.exe src/Creational/Abstract_Factory/*.cs -main:Creational.Abstract_Factory.TestAbstractFactory

$(BLIB)/Creational/Builder.exe : src/Creational/Builder/*.cs
	$(MKDIR) $(BLIB)/Creational/
	$(CSC) -reference:$(BLIB)/tap/tap.dll -reference:$(BLIB)/common/common.dll -out:$(BLIB)/Creational/Builder.exe src/Creational/Builder/*.cs -main:Creational.Builder.TestBuilder

$(BLIB)/Creational/Factory_Method.exe : src/Creational/Factory_Method/*.cs
	$(MKDIR) $(BLIB)/Creational/
	$(CSC) -reference:$(BLIB)/tap/tap.dll -reference:$(BLIB)/common/common.dll -out:$(BLIB)/Creational/Factory_Method.exe src/Creational/Factory_Method/*.cs -main:Creational.Factory_Method.TestFactoryMethod

$(BLIB)/Creational/Prototype.exe : src/Creational/Prototype/*.cs
	$(MKDIR) $(BLIB)/Creational/
	$(CSC) -reference:$(BLIB)/tap/tap.dll -out:$(BLIB)/Creational/Prototype.exe src/Creational/Prototype/*.cs -main:Creational.Prototype.TestPrototype

$(BLIB)/Creational/Singleton.exe : src/Creational/Singleton/*.cs
	$(MKDIR) $(BLIB)/Creational/
	$(CSC) -reference:$(BLIB)/tap/tap.dll -reference:$(BLIB)/common/common.dll  -out:$(BLIB)/Creational/Singleton.exe src/Creational/Singleton/*.cs -main:Creational.Singleton.TestSingleton

$(BLIB)/Structural/Adapter.exe : src/Structural/Adapter/*.cs
	$(MKDIR) $(BLIB)/Structural/
	$(CSC) -reference:$(BLIB)/tap/tap.dll -out:$(BLIB)/Structural/Adapter.exe src/Structural/Adapter/*.cs -main:Structural.Adapter.TestAdapter

$(BLIB)/Structural/Bridge.exe : src/Structural/Bridge/*.cs
	$(MKDIR) $(BLIB)/Structural/
	$(CSC) -reference:$(BLIB)/tap/tap.dll -out:$(BLIB)/Structural/Bridge.exe src/Structural/Bridge/*.cs -main:Structural.Bridge.TestBridge

$(BLIB)/Structural/Composite.exe : src/Structural/Composite/*.cs
	$(MKDIR) $(BLIB)/Structural/
	$(CSC) -reference:$(BLIB)/tap/tap.dll -out:$(BLIB)/Structural/Composite.exe src/Structural/Composite/*.cs -main:Structural.Composite.TestComposite

$(BLIB)/Structural/Decorator.exe : src/Structural/Decorator/*.cs
	$(MKDIR) $(BLIB)/Structural/
	$(CSC) -reference:$(BLIB)/tap/tap.dll -out:$(BLIB)/Structural/Decorator.exe src/Structural/Decorator/*.cs -main:Structural.Decorator.TestDecorator

$(BLIB)/Structural/Facade.exe : src/Structural/Facade/*.cs
	$(MKDIR) $(BLIB)/Structural/
	$(CSC) -reference:$(BLIB)/tap/tap.dll -out:$(BLIB)/Structural/Facade.exe src/Structural/Facade/*.cs -main:Structural.Facade.TestFacade

$(BLIB)/Structural/Flyweight.exe : src/Structural/Flyweight/*.cs
	$(MKDIR) $(BLIB)/Structural/
	$(CSC) -reference:$(BLIB)/tap/tap.dll -out:$(BLIB)/Structural/Flyweight.exe src/Structural/Flyweight/*.cs -main:Structural.Flyweight.TestFlyweight

$(BLIB)/Structural/Proxy.exe : src/Structural/Proxy/*.cs
	$(MKDIR) $(BLIB)/Structural/
	$(CSC) -reference:$(BLIB)/tap/tap.dll -out:$(BLIB)/Structural/Proxy.exe src/Structural/Proxy/*.cs -main:Structural.Proxy.TestProxy






all build: $(BLIB_EXES)


test: build
	env MONO_PATH=$(BLIB) ./blib/Behavioral/Chain_Of_Responsibility.exe
	env MONO_PATH=$(BLIB) ./blib/Behavioral/Command.exe
	env MONO_PATH=$(BLIB) ./blib/Behavioral/Interpreter.exe
	env MONO_PATH=$(BLIB) ./blib/Behavioral/Iterator.exe
	env MONO_PATH=$(BLIB) ./blib/Behavioral/Mediator.exe
	env MONO_PATH=$(BLIB) ./blib/Behavioral/Memento.exe
	env MONO_PATH=$(BLIB) ./blib/Behavioral/Observer.exe
	env MONO_PATH=$(BLIB) ./blib/Behavioral/State.exe
	env MONO_PATH=$(BLIB) ./blib/Behavioral/Strategy.exe
	env MONO_PATH=$(BLIB) ./blib/Behavioral/Template_Method.exe
	env MONO_PATH=$(BLIB) ./blib/Behavioral/Visitor.exe
	env MONO_PATH=$(BLIB) ./blib/Structural/Adapter.exe
	env MONO_PATH=$(BLIB) ./blib/Structural/Bridge.exe
	env MONO_PATH=$(BLIB) ./blib/Structural/Composite.exe
	env MONO_PATH=$(BLIB) ./blib/Structural/Decorator.exe
	env MONO_PATH=$(BLIB) ./blib/Structural/Facade.exe
	env MONO_PATH=$(BLIB) ./blib/Structural/Flyweight.exe
	env MONO_PATH=$(BLIB) ./blib/Structural/Proxy.exe
	env MONO_PATH=$(BLIB) ./blib/Creational/Abstract_Factory.exe
	env MONO_PATH=$(BLIB) ./blib/Creational/Builder.exe
	env MONO_PATH=$(BLIB) ./blib/Creational/Factory_Method.exe
	env MONO_PATH=$(BLIB) ./blib/Creational/Prototype.exe
	env MONO_PATH=$(BLIB) ./blib/Creational/Singleton.exe

loudtest: build
	env PERL6LIB=$(P6LIB) prove -ve '$(PERL6)' -r t/

timetest: build
	env PERL6LIB=$(P6LIB) PERL6_TEST_TIMES=1 prove -ve '$(PERL6)' -r t/

clean:
	rm -fr $(BLIB)

distclean purge: clean
	rm -r Makefile

