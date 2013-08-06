.PHONY: all build test install clean distclean purge

PERL6  = perl6
DESTDIR= 
PREFIX = $(HOME)/vendor/rakudo-star-2013.05/install/lib/parrot/5.3.0/languages/perl6/site
BLIB   = blib
P6LIB  = $(PWD)/$(BLIB)/lib:$(PWD)/lib:$(PERL6LIB)
CP     = cp -p
MKDIR  = mkdir -p


BLIB_PIRS = $(BLIB)/lib/Patterns.pir $(BLIB)/lib/Patterns/common/Soup.pir $(BLIB)/lib/Patterns/common/Minnestrone.pir $(BLIB)/lib/Patterns/common/VegetableSoup.pir $(BLIB)/lib/Patterns/common/TofuSoup.pir $(BLIB)/lib/Patterns/common/PastaFazul.pir $(BLIB)/lib/Patterns/common/ChickenSoup.pir $(BLIB)/lib/Patterns/common/ClamChowder.pir $(BLIB)/lib/Patterns/common/FishChowder.pir $(BLIB)/lib/Patterns/common/BostonFishChowder.pir $(BLIB)/lib/Patterns/common/HonoluluClamChowder.pir $(BLIB)/lib/Patterns/common/HonoluluFishChowder.pir $(BLIB)/lib/Patterns/common/BostonClamChowder.pir $(BLIB)/lib/Patterns/common/SoupBuffet.pir $(BLIB)/lib/Patterns/Behavioral/Interpreter.pir $(BLIB)/lib/Patterns/Behavioral/Visitor.pir $(BLIB)/lib/Patterns/Behavioral/Interpreter/DvdTitleActorExpression.pir $(BLIB)/lib/Patterns/Behavioral/Interpreter/DvdActorExpression.pir $(BLIB)/lib/Patterns/Behavioral/Interpreter/DvdInterpreterClient.pir $(BLIB)/lib/Patterns/Behavioral/Interpreter/DvdActorTitleExpression.pir $(BLIB)/lib/Patterns/Behavioral/Interpreter/DvdAbstractExpression.pir $(BLIB)/lib/Patterns/Behavioral/Interpreter/TitleAndActor.pir $(BLIB)/lib/Patterns/Behavioral/Interpreter/DvdInterpreterContext.pir $(BLIB)/lib/Patterns/Behavioral/Interpreter/DvdTitleExpression.pir $(BLIB)/lib/Patterns/Behavioral/Iterator.pir $(BLIB)/lib/Patterns/Behavioral/Memento.pir $(BLIB)/lib/Patterns/Behavioral/Chain_Of_Responsibility.pir $(BLIB)/lib/Patterns/Behavioral/Observer/DvdRelease.pir $(BLIB)/lib/Patterns/Behavioral/Observer/DvdSubscriber.pir $(BLIB)/lib/Patterns/Behavioral/Observer/DvdReleaseByCategory.pir $(BLIB)/lib/Patterns/Behavioral/Observer.pir $(BLIB)/lib/Patterns/Behavioral/State/DvdStateName.pir $(BLIB)/lib/Patterns/Behavioral/State/DvdStateNameStars.pir $(BLIB)/lib/Patterns/Behavioral/State/DvdStateNameExclaim.pir $(BLIB)/lib/Patterns/Behavioral/State/DvdStateContext.pir $(BLIB)/lib/Patterns/Behavioral/State.pir $(BLIB)/lib/Patterns/Behavioral/Command/CommandAbstract.pir $(BLIB)/lib/Patterns/Behavioral/Command/DvdName.pir $(BLIB)/lib/Patterns/Behavioral/Command/DvdCommandNameStarsOff.pir $(BLIB)/lib/Patterns/Behavioral/Command/DvdCommandNameStarsOn.pir $(BLIB)/lib/Patterns/Behavioral/Command.pir $(BLIB)/lib/Patterns/Behavioral/Template_Method.pir $(BLIB)/lib/Patterns/Behavioral/Template_Method/TitleInfo.pir $(BLIB)/lib/Patterns/Behavioral/Template_Method/DvdTitleInfo.pir $(BLIB)/lib/Patterns/Behavioral/Template_Method/GameTitleInfo.pir $(BLIB)/lib/Patterns/Behavioral/Template_Method/BookTitleInfo.pir $(BLIB)/lib/Patterns/Behavioral/Visitor/AbstractTitleInfo.pir $(BLIB)/lib/Patterns/Behavioral/Visitor/TitleBlurbVisitor.pir $(BLIB)/lib/Patterns/Behavioral/Visitor/DvdInfo.pir $(BLIB)/lib/Patterns/Behavioral/Visitor/BookInfo.pir $(BLIB)/lib/Patterns/Behavioral/Visitor/TitleShortBlurbVisitor.pir $(BLIB)/lib/Patterns/Behavioral/Visitor/TitleLongBlurbVisitor.pir $(BLIB)/lib/Patterns/Behavioral/Visitor/GameInfo.pir $(BLIB)/lib/Patterns/Behavioral/Mediator/DvdTitle.pir $(BLIB)/lib/Patterns/Behavioral/Mediator/DvdLowercaseTitle.pir $(BLIB)/lib/Patterns/Behavioral/Mediator/DvdUppercaseTitle.pir $(BLIB)/lib/Patterns/Behavioral/Mediator/DvdMediator.pir $(BLIB)/lib/Patterns/Behavioral/Mediator.pir $(BLIB)/lib/Patterns/Behavioral/Chain_Of_Responsibility/DvdSubCategory.pir $(BLIB)/lib/Patterns/Behavioral/Chain_Of_Responsibility/DvdCategory.pir $(BLIB)/lib/Patterns/Behavioral/Chain_Of_Responsibility/DvdSubSubCategory.pir $(BLIB)/lib/Patterns/Behavioral/Chain_Of_Responsibility/TopTitle.pir $(BLIB)/lib/Patterns/Behavioral/Memento/DvdMemento.pir $(BLIB)/lib/Patterns/Behavioral/Memento/DvdDetails.pir $(BLIB)/lib/Patterns/Behavioral/Strategy/DvdNameStrategy.pir $(BLIB)/lib/Patterns/Behavioral/Strategy/DvdNameTheAtEndStrategy.pir $(BLIB)/lib/Patterns/Behavioral/Strategy/DvdNameAllCapStrategy.pir $(BLIB)/lib/Patterns/Behavioral/Strategy/DvdNameReplaceSpacesStrategy.pir $(BLIB)/lib/Patterns/Behavioral/Strategy/DvdNameContext.pir $(BLIB)/lib/Patterns/Behavioral/Strategy.pir $(BLIB)/lib/Patterns/Behavioral/Iterator/DvdListIterator.pir $(BLIB)/lib/Patterns/Behavioral/Iterator/DvdList.pir $(BLIB)/lib/Patterns/Creational/Singleton/SingleSpoon.pir $(BLIB)/lib/Patterns/Creational/Singleton.pir $(BLIB)/lib/Patterns/Creational/Builder/SoupBuffetBuilder.pir $(BLIB)/lib/Patterns/Creational/Builder/BostonSoupBuffetBuilder.pir $(BLIB)/lib/Patterns/Creational/Builder/HonoluluSoupBuffetBuilder.pir $(BLIB)/lib/Patterns/Creational/Builder.pir $(BLIB)/lib/Patterns/Creational/Factory_Method.pir $(BLIB)/lib/Patterns/Creational/Factory_Method/HonoluluSoupFactoryMethodSubclass.pir $(BLIB)/lib/Patterns/Creational/Factory_Method/BostonSoupFactoryMethodSubclass.pir $(BLIB)/lib/Patterns/Creational/Factory_Method/SoupFactoryMethod.pir $(BLIB)/lib/Patterns/Creational/Abstract_Factory/AbstractSoupFactory.pir $(BLIB)/lib/Patterns/Creational/Abstract_Factory/BostonConcreteSoupFactory.pir $(BLIB)/lib/Patterns/Creational/Abstract_Factory/HonoluluConcreteSoupFactory.pir $(BLIB)/lib/Patterns/Creational/Abstract_Factory.pir $(BLIB)/lib/Patterns/Creational/Prototype/AbstractSpoon.pir $(BLIB)/lib/Patterns/Creational/Prototype/SoupSpoon.pir $(BLIB)/lib/Patterns/Creational/Prototype/SaladSpoon.pir $(BLIB)/lib/Patterns/Creational/Prototype/SaladFork.pir $(BLIB)/lib/Patterns/Creational/Prototype/AbstractFork.pir $(BLIB)/lib/Patterns/Creational/Prototype/Cloneable.pir $(BLIB)/lib/Patterns/Creational/Prototype/PrototypeFactory.pir $(BLIB)/lib/Patterns/Creational/Prototype.pir $(BLIB)/lib/Patterns/Structural/Decorator.pir $(BLIB)/lib/Patterns/Structural/Adapter.pir $(BLIB)/lib/Patterns/Structural/Facade.pir $(BLIB)/lib/Patterns/Structural/Proxy.pir $(BLIB)/lib/Patterns/Structural/Flyweight/TeaFlavorFactory.pir $(BLIB)/lib/Patterns/Structural/Flyweight/TeaOrder.pir $(BLIB)/lib/Patterns/Structural/Flyweight/TeaOrderContext.pir $(BLIB)/lib/Patterns/Structural/Flyweight/TeaFlavor.pir $(BLIB)/lib/Patterns/Structural/Facade/FacadeTeaBag.pir $(BLIB)/lib/Patterns/Structural/Facade/FacadeTeaCup.pir $(BLIB)/lib/Patterns/Structural/Facade/FacadeCuppaMaker.pir $(BLIB)/lib/Patterns/Structural/Facade/FacadeWater.pir $(BLIB)/lib/Patterns/Structural/Flyweight.pir $(BLIB)/lib/Patterns/Structural/Proxy/PotOfTea.pir $(BLIB)/lib/Patterns/Structural/Proxy/PotOfTeaInterface.pir $(BLIB)/lib/Patterns/Structural/Proxy/PotOfTeaProxy.pir $(BLIB)/lib/Patterns/Structural/Composite/TinOfTeaBags.pir $(BLIB)/lib/Patterns/Structural/Composite/OneTeaBag.pir $(BLIB)/lib/Patterns/Structural/Composite/TeaBags.pir $(BLIB)/lib/Patterns/Structural/Adapter/TeaCup.pir $(BLIB)/lib/Patterns/Structural/Adapter/LooseLeafTea.pir $(BLIB)/lib/Patterns/Structural/Adapter/TeaBall.pir $(BLIB)/lib/Patterns/Structural/Adapter/TeaBag.pir $(BLIB)/lib/Patterns/Structural/Decorator/Tea.pir $(BLIB)/lib/Patterns/Structural/Decorator/ChaiDecorator.pir $(BLIB)/lib/Patterns/Structural/Decorator/TeaLeaves.pir $(BLIB)/lib/Patterns/Structural/Bridge/SodaImpSingleton.pir $(BLIB)/lib/Patterns/Structural/Bridge/SuperSizeSoda.pir $(BLIB)/lib/Patterns/Structural/Bridge/GrapeSodaImp.pir $(BLIB)/lib/Patterns/Structural/Bridge/MediumSoda.pir $(BLIB)/lib/Patterns/Structural/Bridge/SodaImp.pir $(BLIB)/lib/Patterns/Structural/Bridge/CherrySodaImp.pir $(BLIB)/lib/Patterns/Structural/Bridge/OrangeSodaImp.pir $(BLIB)/lib/Patterns/Structural/Bridge/Soda.pir $(BLIB)/lib/Patterns/Structural/Composite.pir $(BLIB)/lib/Patterns/Structural/Bridge.pir 

all build: $(BLIB_PIRS)

$(BLIB)/lib/Patterns.pir : lib/Patterns.pm6
	$(MKDIR) $(BLIB)/lib/
	$(CP) lib/Patterns.pm6 $(BLIB)/lib/Patterns.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns.pir lib/Patterns.pm6

$(BLIB)/lib/Patterns/Behavioral/Interpreter.pir : lib/Patterns/Behavioral/Interpreter.pm6 $(BLIB)/lib/Patterns/Behavioral/Interpreter/TitleAndActor.pir $(BLIB)/lib/Patterns/Behavioral/Interpreter/DvdInterpreterContext.pir $(BLIB)/lib/Patterns/Behavioral/Interpreter/DvdAbstractExpression.pir $(BLIB)/lib/Patterns/Behavioral/Interpreter/DvdActorExpression.pir $(BLIB)/lib/Patterns/Behavioral/Interpreter/DvdTitleActorExpression.pir $(BLIB)/lib/Patterns/Behavioral/Interpreter/DvdActorTitleExpression.pir $(BLIB)/lib/Patterns/Behavioral/Interpreter/DvdTitleExpression.pir $(BLIB)/lib/Patterns/Behavioral/Interpreter/DvdInterpreterClient.pir
	$(MKDIR) $(BLIB)/lib/Patterns/Behavioral/
	$(CP) lib/Patterns/Behavioral/Interpreter.pm6 $(BLIB)/lib/Patterns/Behavioral/Interpreter.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/Behavioral/Interpreter.pir lib/Patterns/Behavioral/Interpreter.pm6

$(BLIB)/lib/Patterns/Behavioral/Visitor.pir : lib/Patterns/Behavioral/Visitor.pm6 $(BLIB)/lib/Patterns/Behavioral/Visitor/TitleBlurbVisitor.pir $(BLIB)/lib/Patterns/Behavioral/Visitor/AbstractTitleInfo.pir $(BLIB)/lib/Patterns/Behavioral/Visitor/DvdInfo.pir $(BLIB)/lib/Patterns/Behavioral/Visitor/BookInfo.pir $(BLIB)/lib/Patterns/Behavioral/Visitor/GameInfo.pir $(BLIB)/lib/Patterns/Behavioral/Visitor/TitleLongBlurbVisitor.pir $(BLIB)/lib/Patterns/Behavioral/Visitor/TitleShortBlurbVisitor.pir 
	$(MKDIR) $(BLIB)/lib/Patterns/Behavioral/
	$(CP) lib/Patterns/Behavioral/Visitor.pm6 $(BLIB)/lib/Patterns/Behavioral/Visitor.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/Behavioral/Visitor.pir lib/Patterns/Behavioral/Visitor.pm6

$(BLIB)/lib/Patterns/Behavioral/Interpreter/DvdTitleActorExpression.pir : lib/Patterns/Behavioral/Interpreter/DvdTitleActorExpression.pm6
	$(MKDIR) $(BLIB)/lib/Patterns/Behavioral/Interpreter/
	$(CP) lib/Patterns/Behavioral/Interpreter/DvdTitleActorExpression.pm6 $(BLIB)/lib/Patterns/Behavioral/Interpreter/DvdTitleActorExpression.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/Behavioral/Interpreter/DvdTitleActorExpression.pir lib/Patterns/Behavioral/Interpreter/DvdTitleActorExpression.pm6

$(BLIB)/lib/Patterns/Behavioral/Interpreter/DvdActorExpression.pir : lib/Patterns/Behavioral/Interpreter/DvdActorExpression.pm6
	$(MKDIR) $(BLIB)/lib/Patterns/Behavioral/Interpreter/
	$(CP) lib/Patterns/Behavioral/Interpreter/DvdActorExpression.pm6 $(BLIB)/lib/Patterns/Behavioral/Interpreter/DvdActorExpression.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/Behavioral/Interpreter/DvdActorExpression.pir lib/Patterns/Behavioral/Interpreter/DvdActorExpression.pm6

$(BLIB)/lib/Patterns/Behavioral/Interpreter/DvdInterpreterClient.pir : lib/Patterns/Behavioral/Interpreter/DvdInterpreterClient.pm6
	$(MKDIR) $(BLIB)/lib/Patterns/Behavioral/Interpreter/
	$(CP) lib/Patterns/Behavioral/Interpreter/DvdInterpreterClient.pm6 $(BLIB)/lib/Patterns/Behavioral/Interpreter/DvdInterpreterClient.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/Behavioral/Interpreter/DvdInterpreterClient.pir lib/Patterns/Behavioral/Interpreter/DvdInterpreterClient.pm6

$(BLIB)/lib/Patterns/Behavioral/Interpreter/DvdActorTitleExpression.pir : lib/Patterns/Behavioral/Interpreter/DvdActorTitleExpression.pm6
	$(MKDIR) $(BLIB)/lib/Patterns/Behavioral/Interpreter/
	$(CP) lib/Patterns/Behavioral/Interpreter/DvdActorTitleExpression.pm6 $(BLIB)/lib/Patterns/Behavioral/Interpreter/DvdActorTitleExpression.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/Behavioral/Interpreter/DvdActorTitleExpression.pir lib/Patterns/Behavioral/Interpreter/DvdActorTitleExpression.pm6

$(BLIB)/lib/Patterns/Behavioral/Interpreter/DvdAbstractExpression.pir : lib/Patterns/Behavioral/Interpreter/DvdAbstractExpression.pm6
	$(MKDIR) $(BLIB)/lib/Patterns/Behavioral/Interpreter/
	$(CP) lib/Patterns/Behavioral/Interpreter/DvdAbstractExpression.pm6 $(BLIB)/lib/Patterns/Behavioral/Interpreter/DvdAbstractExpression.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/Behavioral/Interpreter/DvdAbstractExpression.pir lib/Patterns/Behavioral/Interpreter/DvdAbstractExpression.pm6

$(BLIB)/lib/Patterns/Behavioral/Interpreter/TitleAndActor.pir : lib/Patterns/Behavioral/Interpreter/TitleAndActor.pm6
	$(MKDIR) $(BLIB)/lib/Patterns/Behavioral/Interpreter/
	$(CP) lib/Patterns/Behavioral/Interpreter/TitleAndActor.pm6 $(BLIB)/lib/Patterns/Behavioral/Interpreter/TitleAndActor.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/Behavioral/Interpreter/TitleAndActor.pir lib/Patterns/Behavioral/Interpreter/TitleAndActor.pm6

$(BLIB)/lib/Patterns/Behavioral/Interpreter/DvdInterpreterContext.pir : lib/Patterns/Behavioral/Interpreter/DvdInterpreterContext.pm6
	$(MKDIR) $(BLIB)/lib/Patterns/Behavioral/Interpreter/
	$(CP) lib/Patterns/Behavioral/Interpreter/DvdInterpreterContext.pm6 $(BLIB)/lib/Patterns/Behavioral/Interpreter/DvdInterpreterContext.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/Behavioral/Interpreter/DvdInterpreterContext.pir lib/Patterns/Behavioral/Interpreter/DvdInterpreterContext.pm6

$(BLIB)/lib/Patterns/Behavioral/Interpreter/DvdTitleExpression.pir : lib/Patterns/Behavioral/Interpreter/DvdTitleExpression.pm6
	$(MKDIR) $(BLIB)/lib/Patterns/Behavioral/Interpreter/
	$(CP) lib/Patterns/Behavioral/Interpreter/DvdTitleExpression.pm6 $(BLIB)/lib/Patterns/Behavioral/Interpreter/DvdTitleExpression.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/Behavioral/Interpreter/DvdTitleExpression.pir lib/Patterns/Behavioral/Interpreter/DvdTitleExpression.pm6

$(BLIB)/lib/Patterns/Behavioral/Iterator.pir : lib/Patterns/Behavioral/Iterator.pm6 $(BLIB)/lib/Patterns/Behavioral/Iterator/DvdList.pir $(BLIB)/lib/Patterns/Behavioral/Iterator/DvdListIterator.pir 
	$(MKDIR) $(BLIB)/lib/Patterns/Behavioral/
	$(CP) lib/Patterns/Behavioral/Iterator.pm6 $(BLIB)/lib/Patterns/Behavioral/Iterator.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/Behavioral/Iterator.pir lib/Patterns/Behavioral/Iterator.pm6

$(BLIB)/lib/Patterns/Behavioral/Memento.pir : lib/Patterns/Behavioral/Memento.pm6 $(BLIB)/lib/Patterns/Behavioral/Memento/DvdMemento.pir $(BLIB)/lib/Patterns/Behavioral/Memento/DvdDetails.pir 
	$(MKDIR) $(BLIB)/lib/Patterns/Behavioral/
	$(CP) lib/Patterns/Behavioral/Memento.pm6 $(BLIB)/lib/Patterns/Behavioral/Memento.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/Behavioral/Memento.pir lib/Patterns/Behavioral/Memento.pm6

$(BLIB)/lib/Patterns/Behavioral/Chain_Of_Responsibility.pir : lib/Patterns/Behavioral/Chain_Of_Responsibility.pm6 $(BLIB)/lib/Patterns/Behavioral/Chain_Of_Responsibility/TopTitle.pir $(BLIB)/lib/Patterns/Behavioral/Chain_Of_Responsibility/DvdCategory.pir $(BLIB)/lib/Patterns/Behavioral/Chain_Of_Responsibility/DvdSubCategory.pir $(BLIB)/lib/Patterns/Behavioral/Chain_Of_Responsibility/DvdSubSubCategory.pir
	$(MKDIR) $(BLIB)/lib/Patterns/Behavioral/
	$(CP) lib/Patterns/Behavioral/Chain_Of_Responsibility.pm6 $(BLIB)/lib/Patterns/Behavioral/Chain_Of_Responsibility.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/Behavioral/Chain_Of_Responsibility.pir lib/Patterns/Behavioral/Chain_Of_Responsibility.pm6

$(BLIB)/lib/Patterns/Behavioral/Observer/DvdRelease.pir : lib/Patterns/Behavioral/Observer/DvdRelease.pm6
	$(MKDIR) $(BLIB)/lib/Patterns/Behavioral/Observer/
	$(CP) lib/Patterns/Behavioral/Observer/DvdRelease.pm6 $(BLIB)/lib/Patterns/Behavioral/Observer/DvdRelease.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/Behavioral/Observer/DvdRelease.pir lib/Patterns/Behavioral/Observer/DvdRelease.pm6

$(BLIB)/lib/Patterns/Behavioral/Observer/DvdSubscriber.pir : lib/Patterns/Behavioral/Observer/DvdSubscriber.pm6
	$(MKDIR) $(BLIB)/lib/Patterns/Behavioral/Observer/
	$(CP) lib/Patterns/Behavioral/Observer/DvdSubscriber.pm6 $(BLIB)/lib/Patterns/Behavioral/Observer/DvdSubscriber.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/Behavioral/Observer/DvdSubscriber.pir lib/Patterns/Behavioral/Observer/DvdSubscriber.pm6

$(BLIB)/lib/Patterns/Behavioral/Observer/DvdReleaseByCategory.pir : lib/Patterns/Behavioral/Observer/DvdReleaseByCategory.pm6
	$(MKDIR) $(BLIB)/lib/Patterns/Behavioral/Observer/
	$(CP) lib/Patterns/Behavioral/Observer/DvdReleaseByCategory.pm6 $(BLIB)/lib/Patterns/Behavioral/Observer/DvdReleaseByCategory.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/Behavioral/Observer/DvdReleaseByCategory.pir lib/Patterns/Behavioral/Observer/DvdReleaseByCategory.pm6

$(BLIB)/lib/Patterns/Behavioral/State/DvdStateNameStars.pir : lib/Patterns/Behavioral/State/DvdStateNameStars.pm6
	$(MKDIR) $(BLIB)/lib/Patterns/Behavioral/State/
	$(CP) lib/Patterns/Behavioral/State/DvdStateNameStars.pm6 $(BLIB)/lib/Patterns/Behavioral/State/DvdStateNameStars.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/Behavioral/State/DvdStateNameStars.pir lib/Patterns/Behavioral/State/DvdStateNameStars.pm6

$(BLIB)/lib/Patterns/Behavioral/State/DvdStateName.pir : lib/Patterns/Behavioral/State/DvdStateName.pm6
	$(MKDIR) $(BLIB)/lib/Patterns/Behavioral/State/
	$(CP) lib/Patterns/Behavioral/State/DvdStateName.pm6 $(BLIB)/lib/Patterns/Behavioral/State/DvdStateName.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/Behavioral/State/DvdStateName.pir lib/Patterns/Behavioral/State/DvdStateName.pm6

$(BLIB)/lib/Patterns/Behavioral/State/DvdStateContext.pir : lib/Patterns/Behavioral/State/DvdStateContext.pm6
	$(MKDIR) $(BLIB)/lib/Patterns/Behavioral/State/
	$(CP) lib/Patterns/Behavioral/State/DvdStateContext.pm6 $(BLIB)/lib/Patterns/Behavioral/State/DvdStateContext.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/Behavioral/State/DvdStateContext.pir lib/Patterns/Behavioral/State/DvdStateContext.pm6

$(BLIB)/lib/Patterns/Behavioral/State/DvdStateNameExclaim.pir : lib/Patterns/Behavioral/State/DvdStateNameExclaim.pm6
	$(MKDIR) $(BLIB)/lib/Patterns/Behavioral/State/
	$(CP) lib/Patterns/Behavioral/State/DvdStateNameExclaim.pm6 $(BLIB)/lib/Patterns/Behavioral/State/DvdStateNameExclaim.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/Behavioral/State/DvdStateNameExclaim.pir lib/Patterns/Behavioral/State/DvdStateNameExclaim.pm6

$(BLIB)/lib/Patterns/Behavioral/Command.pir : lib/Patterns/Behavioral/Command.pm6 $(BLIB)/lib/Patterns/Behavioral/Command/CommandAbstract.pir $(BLIB)/lib/Patterns/Behavioral/Command/DvdCommandNameStarsOff.pir $(BLIB)/lib/Patterns/Behavioral/Command/DvdCommandNameStarsOn.pir $(BLIB)/lib/Patterns/Behavioral/Command/DvdName.pir
	$(MKDIR) $(BLIB)/lib/Patterns/Behavioral/
	$(CP) lib/Patterns/Behavioral/Command.pm6 $(BLIB)/lib/Patterns/Behavioral/Command.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/Behavioral/Command.pir lib/Patterns/Behavioral/Command.pm6

$(BLIB)/lib/Patterns/Behavioral/Template_Method/DvdTitleInfo.pir : lib/Patterns/Behavioral/Template_Method/DvdTitleInfo.pm6
	$(MKDIR) $(BLIB)/lib/Patterns/Behavioral/Template_Method/
	$(CP) lib/Patterns/Behavioral/Template_Method/DvdTitleInfo.pm6 $(BLIB)/lib/Patterns/Behavioral/Template_Method/DvdTitleInfo.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/Behavioral/Template_Method/DvdTitleInfo.pir lib/Patterns/Behavioral/Template_Method/DvdTitleInfo.pm6

$(BLIB)/lib/Patterns/Behavioral/Template_Method/GameTitleInfo.pir : lib/Patterns/Behavioral/Template_Method/GameTitleInfo.pm6
	$(MKDIR) $(BLIB)/lib/Patterns/Behavioral/Template_Method/
	$(CP) lib/Patterns/Behavioral/Template_Method/GameTitleInfo.pm6 $(BLIB)/lib/Patterns/Behavioral/Template_Method/GameTitleInfo.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/Behavioral/Template_Method/GameTitleInfo.pir lib/Patterns/Behavioral/Template_Method/GameTitleInfo.pm6

$(BLIB)/lib/Patterns/Behavioral/Template_Method/BookTitleInfo.pir : lib/Patterns/Behavioral/Template_Method/BookTitleInfo.pm6
	$(MKDIR) $(BLIB)/lib/Patterns/Behavioral/Template_Method/
	$(CP) lib/Patterns/Behavioral/Template_Method/BookTitleInfo.pm6 $(BLIB)/lib/Patterns/Behavioral/Template_Method/BookTitleInfo.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/Behavioral/Template_Method/BookTitleInfo.pir lib/Patterns/Behavioral/Template_Method/BookTitleInfo.pm6

$(BLIB)/lib/Patterns/Behavioral/Template_Method/TitleInfo.pir : lib/Patterns/Behavioral/Template_Method/TitleInfo.pm6
	$(MKDIR) $(BLIB)/lib/Patterns/Behavioral/Template_Method/
	$(CP) lib/Patterns/Behavioral/Template_Method/TitleInfo.pm6 $(BLIB)/lib/Patterns/Behavioral/Template_Method/TitleInfo.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/Behavioral/Template_Method/TitleInfo.pir lib/Patterns/Behavioral/Template_Method/TitleInfo.pm6

$(BLIB)/lib/Patterns/Behavioral/Strategy.pir : lib/Patterns/Behavioral/Strategy.pm6 $(BLIB)/lib/Patterns/Behavioral/Strategy/DvdNameStrategy.pir $(BLIB)/lib/Patterns/Behavioral/Strategy/DvdNameReplaceSpacesStrategy.pir $(BLIB)/lib/Patterns/Behavioral/Strategy/DvdNameTheAtEndStrategy.pir $(BLIB)/lib/Patterns/Behavioral/Strategy/DvdNameAllCapStrategy.pir $(BLIB)/lib/Patterns/Behavioral/Strategy/DvdNameContext.pir
	$(MKDIR) $(BLIB)/lib/Patterns/Behavioral/
	$(CP) lib/Patterns/Behavioral/Strategy.pm6 $(BLIB)/lib/Patterns/Behavioral/Strategy.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/Behavioral/Strategy.pir lib/Patterns/Behavioral/Strategy.pm6

$(BLIB)/lib/Patterns/Behavioral/Visitor/DvdInfo.pir : lib/Patterns/Behavioral/Visitor/DvdInfo.pm6
	$(MKDIR) $(BLIB)/lib/Patterns/Behavioral/Visitor/
	$(CP) lib/Patterns/Behavioral/Visitor/DvdInfo.pm6 $(BLIB)/lib/Patterns/Behavioral/Visitor/DvdInfo.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/Behavioral/Visitor/DvdInfo.pir lib/Patterns/Behavioral/Visitor/DvdInfo.pm6

$(BLIB)/lib/Patterns/Behavioral/Visitor/BookInfo.pir : lib/Patterns/Behavioral/Visitor/BookInfo.pm6
	$(MKDIR) $(BLIB)/lib/Patterns/Behavioral/Visitor/
	$(CP) lib/Patterns/Behavioral/Visitor/BookInfo.pm6 $(BLIB)/lib/Patterns/Behavioral/Visitor/BookInfo.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/Behavioral/Visitor/BookInfo.pir lib/Patterns/Behavioral/Visitor/BookInfo.pm6

$(BLIB)/lib/Patterns/Behavioral/Visitor/TitleShortBlurbVisitor.pir : lib/Patterns/Behavioral/Visitor/TitleShortBlurbVisitor.pm6
	$(MKDIR) $(BLIB)/lib/Patterns/Behavioral/Visitor/
	$(CP) lib/Patterns/Behavioral/Visitor/TitleShortBlurbVisitor.pm6 $(BLIB)/lib/Patterns/Behavioral/Visitor/TitleShortBlurbVisitor.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/Behavioral/Visitor/TitleShortBlurbVisitor.pir lib/Patterns/Behavioral/Visitor/TitleShortBlurbVisitor.pm6

$(BLIB)/lib/Patterns/Behavioral/Visitor/AbstractTitleInfo.pir : lib/Patterns/Behavioral/Visitor/AbstractTitleInfo.pm6
	$(MKDIR) $(BLIB)/lib/Patterns/Behavioral/Visitor/
	$(CP) lib/Patterns/Behavioral/Visitor/AbstractTitleInfo.pm6 $(BLIB)/lib/Patterns/Behavioral/Visitor/AbstractTitleInfo.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/Behavioral/Visitor/AbstractTitleInfo.pir lib/Patterns/Behavioral/Visitor/AbstractTitleInfo.pm6

$(BLIB)/lib/Patterns/Behavioral/Visitor/TitleLongBlurbVisitor.pir : lib/Patterns/Behavioral/Visitor/TitleLongBlurbVisitor.pm6
	$(MKDIR) $(BLIB)/lib/Patterns/Behavioral/Visitor/
	$(CP) lib/Patterns/Behavioral/Visitor/TitleLongBlurbVisitor.pm6 $(BLIB)/lib/Patterns/Behavioral/Visitor/TitleLongBlurbVisitor.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/Behavioral/Visitor/TitleLongBlurbVisitor.pir lib/Patterns/Behavioral/Visitor/TitleLongBlurbVisitor.pm6

$(BLIB)/lib/Patterns/Behavioral/Visitor/GameInfo.pir : lib/Patterns/Behavioral/Visitor/GameInfo.pm6
	$(MKDIR) $(BLIB)/lib/Patterns/Behavioral/Visitor/
	$(CP) lib/Patterns/Behavioral/Visitor/GameInfo.pm6 $(BLIB)/lib/Patterns/Behavioral/Visitor/GameInfo.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/Behavioral/Visitor/GameInfo.pir lib/Patterns/Behavioral/Visitor/GameInfo.pm6

$(BLIB)/lib/Patterns/Behavioral/Visitor/TitleBlurbVisitor.pir : lib/Patterns/Behavioral/Visitor/TitleBlurbVisitor.pm6
	$(MKDIR) $(BLIB)/lib/Patterns/Behavioral/Visitor/
	$(CP) lib/Patterns/Behavioral/Visitor/TitleBlurbVisitor.pm6 $(BLIB)/lib/Patterns/Behavioral/Visitor/TitleBlurbVisitor.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/Behavioral/Visitor/TitleBlurbVisitor.pir lib/Patterns/Behavioral/Visitor/TitleBlurbVisitor.pm6

$(BLIB)/lib/Patterns/Behavioral/Mediator/DvdLowercaseTitle.pir : lib/Patterns/Behavioral/Mediator/DvdLowercaseTitle.pm6
	$(MKDIR) $(BLIB)/lib/Patterns/Behavioral/Mediator/
	$(CP) lib/Patterns/Behavioral/Mediator/DvdLowercaseTitle.pm6 $(BLIB)/lib/Patterns/Behavioral/Mediator/DvdLowercaseTitle.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/Behavioral/Mediator/DvdLowercaseTitle.pir lib/Patterns/Behavioral/Mediator/DvdLowercaseTitle.pm6

$(BLIB)/lib/Patterns/Behavioral/Mediator/DvdUppercaseTitle.pir : lib/Patterns/Behavioral/Mediator/DvdUppercaseTitle.pm6
	$(MKDIR) $(BLIB)/lib/Patterns/Behavioral/Mediator/
	$(CP) lib/Patterns/Behavioral/Mediator/DvdUppercaseTitle.pm6 $(BLIB)/lib/Patterns/Behavioral/Mediator/DvdUppercaseTitle.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/Behavioral/Mediator/DvdUppercaseTitle.pir lib/Patterns/Behavioral/Mediator/DvdUppercaseTitle.pm6

$(BLIB)/lib/Patterns/Behavioral/Mediator/DvdMediator.pir : lib/Patterns/Behavioral/Mediator/DvdMediator.pm6
	$(MKDIR) $(BLIB)/lib/Patterns/Behavioral/Mediator/
	$(CP) lib/Patterns/Behavioral/Mediator/DvdMediator.pm6 $(BLIB)/lib/Patterns/Behavioral/Mediator/DvdMediator.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/Behavioral/Mediator/DvdMediator.pir lib/Patterns/Behavioral/Mediator/DvdMediator.pm6

$(BLIB)/lib/Patterns/Behavioral/Mediator/DvdTitle.pir : lib/Patterns/Behavioral/Mediator/DvdTitle.pm6
	$(MKDIR) $(BLIB)/lib/Patterns/Behavioral/Mediator/
	$(CP) lib/Patterns/Behavioral/Mediator/DvdTitle.pm6 $(BLIB)/lib/Patterns/Behavioral/Mediator/DvdTitle.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/Behavioral/Mediator/DvdTitle.pir lib/Patterns/Behavioral/Mediator/DvdTitle.pm6

$(BLIB)/lib/Patterns/Behavioral/Chain_Of_Responsibility/DvdSubCategory.pir : lib/Patterns/Behavioral/Chain_Of_Responsibility/DvdSubCategory.pm6
	$(MKDIR) $(BLIB)/lib/Patterns/Behavioral/Chain_Of_Responsibility/
	$(CP) lib/Patterns/Behavioral/Chain_Of_Responsibility/DvdSubCategory.pm6 $(BLIB)/lib/Patterns/Behavioral/Chain_Of_Responsibility/DvdSubCategory.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/Behavioral/Chain_Of_Responsibility/DvdSubCategory.pir lib/Patterns/Behavioral/Chain_Of_Responsibility/DvdSubCategory.pm6

$(BLIB)/lib/Patterns/Behavioral/Chain_Of_Responsibility/DvdCategory.pir : lib/Patterns/Behavioral/Chain_Of_Responsibility/DvdCategory.pm6
	$(MKDIR) $(BLIB)/lib/Patterns/Behavioral/Chain_Of_Responsibility/
	$(CP) lib/Patterns/Behavioral/Chain_Of_Responsibility/DvdCategory.pm6 $(BLIB)/lib/Patterns/Behavioral/Chain_Of_Responsibility/DvdCategory.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/Behavioral/Chain_Of_Responsibility/DvdCategory.pir lib/Patterns/Behavioral/Chain_Of_Responsibility/DvdCategory.pm6

$(BLIB)/lib/Patterns/Behavioral/Chain_Of_Responsibility/DvdSubSubCategory.pir : lib/Patterns/Behavioral/Chain_Of_Responsibility/DvdSubSubCategory.pm6
	$(MKDIR) $(BLIB)/lib/Patterns/Behavioral/Chain_Of_Responsibility/
	$(CP) lib/Patterns/Behavioral/Chain_Of_Responsibility/DvdSubSubCategory.pm6 $(BLIB)/lib/Patterns/Behavioral/Chain_Of_Responsibility/DvdSubSubCategory.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/Behavioral/Chain_Of_Responsibility/DvdSubSubCategory.pir lib/Patterns/Behavioral/Chain_Of_Responsibility/DvdSubSubCategory.pm6

$(BLIB)/lib/Patterns/Behavioral/Chain_Of_Responsibility/TopTitle.pir : lib/Patterns/Behavioral/Chain_Of_Responsibility/TopTitle.pm6
	$(MKDIR) $(BLIB)/lib/Patterns/Behavioral/Chain_Of_Responsibility/
	$(CP) lib/Patterns/Behavioral/Chain_Of_Responsibility/TopTitle.pm6 $(BLIB)/lib/Patterns/Behavioral/Chain_Of_Responsibility/TopTitle.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/Behavioral/Chain_Of_Responsibility/TopTitle.pir lib/Patterns/Behavioral/Chain_Of_Responsibility/TopTitle.pm6

$(BLIB)/lib/Patterns/Behavioral/Mediator.pir : lib/Patterns/Behavioral/Mediator.pm6 $(BLIB)/lib/Patterns/Behavioral/Mediator/DvdMediator.pir $(BLIB)/lib/Patterns/Behavioral/Mediator/DvdTitle.pir $(BLIB)/lib/Patterns/Behavioral/Mediator/DvdUppercaseTitle.pir $(BLIB)/lib/Patterns/Behavioral/Mediator/DvdLowercaseTitle.pir
	$(MKDIR) $(BLIB)/lib/Patterns/Behavioral/
	$(CP) lib/Patterns/Behavioral/Mediator.pm6 $(BLIB)/lib/Patterns/Behavioral/Mediator.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/Behavioral/Mediator.pir lib/Patterns/Behavioral/Mediator.pm6

$(BLIB)/lib/Patterns/Behavioral/Template_Method.pir : lib/Patterns/Behavioral/Template_Method.pm6 $(BLIB)/lib/Patterns/Behavioral/Template_Method/TitleInfo.pir $(BLIB)/lib/Patterns/Behavioral/Template_Method/BookTitleInfo.pir $(BLIB)/lib/Patterns/Behavioral/Template_Method/DvdTitleInfo.pir $(BLIB)/lib/Patterns/Behavioral/Template_Method/GameTitleInfo.pir
	$(MKDIR) $(BLIB)/lib/Patterns/Behavioral/
	$(CP) lib/Patterns/Behavioral/Template_Method.pm6 $(BLIB)/lib/Patterns/Behavioral/Template_Method.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/Behavioral/Template_Method.pir lib/Patterns/Behavioral/Template_Method.pm6

$(BLIB)/lib/Patterns/Behavioral/Observer.pir : lib/Patterns/Behavioral/Observer.pm6 $(BLIB)/lib/Patterns/Behavioral/Observer/DvdRelease.pir $(BLIB)/lib/Patterns/Behavioral/Observer/DvdReleaseByCategory.pir $(BLIB)/lib/Patterns/Behavioral/Observer/DvdSubscriber.pir
	$(MKDIR) $(BLIB)/lib/Patterns/Behavioral/
	$(CP) lib/Patterns/Behavioral/Observer.pm6 $(BLIB)/lib/Patterns/Behavioral/Observer.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/Behavioral/Observer.pir lib/Patterns/Behavioral/Observer.pm6

$(BLIB)/lib/Patterns/Behavioral/Command/DvdCommandNameStarsOff.pir : lib/Patterns/Behavioral/Command/DvdCommandNameStarsOff.pm6
	$(MKDIR) $(BLIB)/lib/Patterns/Behavioral/Command/
	$(CP) lib/Patterns/Behavioral/Command/DvdCommandNameStarsOff.pm6 $(BLIB)/lib/Patterns/Behavioral/Command/DvdCommandNameStarsOff.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/Behavioral/Command/DvdCommandNameStarsOff.pir lib/Patterns/Behavioral/Command/DvdCommandNameStarsOff.pm6

$(BLIB)/lib/Patterns/Behavioral/Command/CommandAbstract.pir : lib/Patterns/Behavioral/Command/CommandAbstract.pm6
	$(MKDIR) $(BLIB)/lib/Patterns/Behavioral/Command/
	$(CP) lib/Patterns/Behavioral/Command/CommandAbstract.pm6 $(BLIB)/lib/Patterns/Behavioral/Command/CommandAbstract.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/Behavioral/Command/CommandAbstract.pir lib/Patterns/Behavioral/Command/CommandAbstract.pm6

$(BLIB)/lib/Patterns/Behavioral/Command/DvdName.pir : lib/Patterns/Behavioral/Command/DvdName.pm6
	$(MKDIR) $(BLIB)/lib/Patterns/Behavioral/Command/
	$(CP) lib/Patterns/Behavioral/Command/DvdName.pm6 $(BLIB)/lib/Patterns/Behavioral/Command/DvdName.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/Behavioral/Command/DvdName.pir lib/Patterns/Behavioral/Command/DvdName.pm6

$(BLIB)/lib/Patterns/Behavioral/Command/DvdCommandNameStarsOn.pir : lib/Patterns/Behavioral/Command/DvdCommandNameStarsOn.pm6
	$(MKDIR) $(BLIB)/lib/Patterns/Behavioral/Command/
	$(CP) lib/Patterns/Behavioral/Command/DvdCommandNameStarsOn.pm6 $(BLIB)/lib/Patterns/Behavioral/Command/DvdCommandNameStarsOn.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/Behavioral/Command/DvdCommandNameStarsOn.pir lib/Patterns/Behavioral/Command/DvdCommandNameStarsOn.pm6

$(BLIB)/lib/Patterns/Behavioral/Memento/DvdMemento.pir : lib/Patterns/Behavioral/Memento/DvdMemento.pm6
	$(MKDIR) $(BLIB)/lib/Patterns/Behavioral/Memento/
	$(CP) lib/Patterns/Behavioral/Memento/DvdMemento.pm6 $(BLIB)/lib/Patterns/Behavioral/Memento/DvdMemento.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/Behavioral/Memento/DvdMemento.pir lib/Patterns/Behavioral/Memento/DvdMemento.pm6

$(BLIB)/lib/Patterns/Behavioral/Memento/DvdDetails.pir : lib/Patterns/Behavioral/Memento/DvdDetails.pm6
	$(MKDIR) $(BLIB)/lib/Patterns/Behavioral/Memento/
	$(CP) lib/Patterns/Behavioral/Memento/DvdDetails.pm6 $(BLIB)/lib/Patterns/Behavioral/Memento/DvdDetails.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/Behavioral/Memento/DvdDetails.pir lib/Patterns/Behavioral/Memento/DvdDetails.pm6

$(BLIB)/lib/Patterns/Behavioral/State.pir : lib/Patterns/Behavioral/State.pm6 $(BLIB)/lib/Patterns/Behavioral/State/DvdStateNameStars.pir $(BLIB)/lib/Patterns/Behavioral/State/DvdStateNameExclaim.pir $(BLIB)/lib/Patterns/Behavioral/State/DvdStateName.pir $(BLIB)/lib/Patterns/Behavioral/State/DvdStateContext.pir
	$(MKDIR) $(BLIB)/lib/Patterns/Behavioral/
	$(CP) lib/Patterns/Behavioral/State.pm6 $(BLIB)/lib/Patterns/Behavioral/State.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/Behavioral/State.pir lib/Patterns/Behavioral/State.pm6

$(BLIB)/lib/Patterns/Behavioral/Strategy/DvdNameTheAtEndStrategy.pir : lib/Patterns/Behavioral/Strategy/DvdNameTheAtEndStrategy.pm6
	$(MKDIR) $(BLIB)/lib/Patterns/Behavioral/Strategy/
	$(CP) lib/Patterns/Behavioral/Strategy/DvdNameTheAtEndStrategy.pm6 $(BLIB)/lib/Patterns/Behavioral/Strategy/DvdNameTheAtEndStrategy.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/Behavioral/Strategy/DvdNameTheAtEndStrategy.pir lib/Patterns/Behavioral/Strategy/DvdNameTheAtEndStrategy.pm6

$(BLIB)/lib/Patterns/Behavioral/Strategy/DvdNameAllCapStrategy.pir : lib/Patterns/Behavioral/Strategy/DvdNameAllCapStrategy.pm6
	$(MKDIR) $(BLIB)/lib/Patterns/Behavioral/Strategy/
	$(CP) lib/Patterns/Behavioral/Strategy/DvdNameAllCapStrategy.pm6 $(BLIB)/lib/Patterns/Behavioral/Strategy/DvdNameAllCapStrategy.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/Behavioral/Strategy/DvdNameAllCapStrategy.pir lib/Patterns/Behavioral/Strategy/DvdNameAllCapStrategy.pm6

$(BLIB)/lib/Patterns/Behavioral/Strategy/DvdNameStrategy.pir : lib/Patterns/Behavioral/Strategy/DvdNameStrategy.pm6
	$(MKDIR) $(BLIB)/lib/Patterns/Behavioral/Strategy/
	$(CP) lib/Patterns/Behavioral/Strategy/DvdNameStrategy.pm6 $(BLIB)/lib/Patterns/Behavioral/Strategy/DvdNameStrategy.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/Behavioral/Strategy/DvdNameStrategy.pir lib/Patterns/Behavioral/Strategy/DvdNameStrategy.pm6

$(BLIB)/lib/Patterns/Behavioral/Strategy/DvdNameContext.pir : lib/Patterns/Behavioral/Strategy/DvdNameContext.pm6
	$(MKDIR) $(BLIB)/lib/Patterns/Behavioral/Strategy/
	$(CP) lib/Patterns/Behavioral/Strategy/DvdNameContext.pm6 $(BLIB)/lib/Patterns/Behavioral/Strategy/DvdNameContext.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/Behavioral/Strategy/DvdNameContext.pir lib/Patterns/Behavioral/Strategy/DvdNameContext.pm6

$(BLIB)/lib/Patterns/Behavioral/Strategy/DvdNameReplaceSpacesStrategy.pir : lib/Patterns/Behavioral/Strategy/DvdNameReplaceSpacesStrategy.pm6
	$(MKDIR) $(BLIB)/lib/Patterns/Behavioral/Strategy/
	$(CP) lib/Patterns/Behavioral/Strategy/DvdNameReplaceSpacesStrategy.pm6 $(BLIB)/lib/Patterns/Behavioral/Strategy/DvdNameReplaceSpacesStrategy.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/Behavioral/Strategy/DvdNameReplaceSpacesStrategy.pir lib/Patterns/Behavioral/Strategy/DvdNameReplaceSpacesStrategy.pm6

$(BLIB)/lib/Patterns/Behavioral/Iterator/DvdList.pir : lib/Patterns/Behavioral/Iterator/DvdList.pm6
	$(MKDIR) $(BLIB)/lib/Patterns/Behavioral/Iterator/
	$(CP) lib/Patterns/Behavioral/Iterator/DvdList.pm6 $(BLIB)/lib/Patterns/Behavioral/Iterator/DvdList.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/Behavioral/Iterator/DvdList.pir lib/Patterns/Behavioral/Iterator/DvdList.pm6

$(BLIB)/lib/Patterns/Behavioral/Iterator/DvdListIterator.pir : lib/Patterns/Behavioral/Iterator/DvdListIterator.pm6
	$(MKDIR) $(BLIB)/lib/Patterns/Behavioral/Iterator/
	$(CP) lib/Patterns/Behavioral/Iterator/DvdListIterator.pm6 $(BLIB)/lib/Patterns/Behavioral/Iterator/DvdListIterator.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/Behavioral/Iterator/DvdListIterator.pir lib/Patterns/Behavioral/Iterator/DvdListIterator.pm6

$(BLIB)/lib/Patterns/Creational/Singleton/SingleSpoon.pir : lib/Patterns/Creational/Singleton/SingleSpoon.pm6
	$(MKDIR) $(BLIB)/lib/Patterns/Creational/Singleton/
	$(CP) lib/Patterns/Creational/Singleton/SingleSpoon.pm6 $(BLIB)/lib/Patterns/Creational/Singleton/SingleSpoon.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/Creational/Singleton/SingleSpoon.pir lib/Patterns/Creational/Singleton/SingleSpoon.pm6

$(BLIB)/lib/Patterns/Creational/Builder.pir : lib/Patterns/Creational/Builder.pm6 $(BLIB)/lib/Patterns/Creational/Builder/BostonSoupBuffetBuilder.pir $(BLIB)/lib/Patterns/Creational/Builder/SoupBuffetBuilder.pir $(BLIB)/lib/Patterns/Creational/Builder/HonoluluSoupBuffetBuilder.pir
	$(MKDIR) $(BLIB)/lib/Patterns/Creational/
	$(CP) lib/Patterns/Creational/Builder.pm6 $(BLIB)/lib/Patterns/Creational/Builder.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/Creational/Builder.pir lib/Patterns/Creational/Builder.pm6

$(BLIB)/lib/Patterns/Creational/Factory_Method.pir : lib/Patterns/Creational/Factory_Method.pm6 $(BLIB)/lib/Patterns/Creational/Factory_Method/SoupFactoryMethod.pir $(BLIB)/lib/Patterns/Creational/Factory_Method/HonoluluSoupFactoryMethodSubclass.pir $(BLIB)/lib/Patterns/Creational/Factory_Method/BostonSoupFactoryMethodSubclass.pir
	$(MKDIR) $(BLIB)/lib/Patterns/Creational/
	$(CP) lib/Patterns/Creational/Factory_Method.pm6 $(BLIB)/lib/Patterns/Creational/Factory_Method.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/Creational/Factory_Method.pir lib/Patterns/Creational/Factory_Method.pm6

$(BLIB)/lib/Patterns/Creational/Abstract_Factory.pir : lib/Patterns/Creational/Abstract_Factory.pm6 $(BLIB)/lib/Patterns/Creational/Abstract_Factory/BostonConcreteSoupFactory.pir $(BLIB)/lib/Patterns/Creational/Abstract_Factory/HonoluluConcreteSoupFactory.pir $(BLIB)/lib/Patterns/Creational/Abstract_Factory/AbstractSoupFactory.pir
	$(MKDIR) $(BLIB)/lib/Patterns/Creational/
	$(CP) lib/Patterns/Creational/Abstract_Factory.pm6 $(BLIB)/lib/Patterns/Creational/Abstract_Factory.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/Creational/Abstract_Factory.pir lib/Patterns/Creational/Abstract_Factory.pm6

$(BLIB)/lib/Patterns/Creational/Builder/BostonSoupBuffetBuilder.pir : lib/Patterns/Creational/Builder/BostonSoupBuffetBuilder.pm6
	$(MKDIR) $(BLIB)/lib/Patterns/Creational/Builder/
	$(CP) lib/Patterns/Creational/Builder/BostonSoupBuffetBuilder.pm6 $(BLIB)/lib/Patterns/Creational/Builder/BostonSoupBuffetBuilder.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/Creational/Builder/BostonSoupBuffetBuilder.pir lib/Patterns/Creational/Builder/BostonSoupBuffetBuilder.pm6

$(BLIB)/lib/Patterns/Creational/Builder/HonoluluSoupBuffetBuilder.pir : lib/Patterns/Creational/Builder/HonoluluSoupBuffetBuilder.pm6
	$(MKDIR) $(BLIB)/lib/Patterns/Creational/Builder/
	$(CP) lib/Patterns/Creational/Builder/HonoluluSoupBuffetBuilder.pm6 $(BLIB)/lib/Patterns/Creational/Builder/HonoluluSoupBuffetBuilder.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/Creational/Builder/HonoluluSoupBuffetBuilder.pir lib/Patterns/Creational/Builder/HonoluluSoupBuffetBuilder.pm6

$(BLIB)/lib/Patterns/Creational/Builder/SoupBuffetBuilder.pir : lib/Patterns/Creational/Builder/SoupBuffetBuilder.pm6
	$(MKDIR) $(BLIB)/lib/Patterns/Creational/Builder/
	$(CP) lib/Patterns/Creational/Builder/SoupBuffetBuilder.pm6 $(BLIB)/lib/Patterns/Creational/Builder/SoupBuffetBuilder.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/Creational/Builder/SoupBuffetBuilder.pir lib/Patterns/Creational/Builder/SoupBuffetBuilder.pm6

$(BLIB)/lib/Patterns/Creational/Singleton.pir : lib/Patterns/Creational/Singleton.pm6 $(BLIB)/lib/Patterns/Creational/Singleton/SingleSpoon.pir
	$(MKDIR) $(BLIB)/lib/Patterns/Creational/
	$(CP) lib/Patterns/Creational/Singleton.pm6 $(BLIB)/lib/Patterns/Creational/Singleton.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/Creational/Singleton.pir lib/Patterns/Creational/Singleton.pm6

$(BLIB)/lib/Patterns/Creational/Prototype.pir : lib/Patterns/Creational/Prototype.pm6 $(BLIB)/lib/Patterns/Creational/Prototype/Cloneable.pir $(BLIB)/lib/Patterns/Creational/Prototype/AbstractFork.pir $(BLIB)/lib/Patterns/Creational/Prototype/AbstractSpoon.pir $(BLIB)/lib/Patterns/Creational/Prototype/SoupSpoon.pir $(BLIB)/lib/Patterns/Creational/Prototype/SaladFork.pir $(BLIB)/lib/Patterns/Creational/Prototype/SaladSpoon.pir $(BLIB)/lib/Patterns/Creational/Prototype/PrototypeFactory.pir
	$(MKDIR) $(BLIB)/lib/Patterns/Creational/
	$(CP) lib/Patterns/Creational/Prototype.pm6 $(BLIB)/lib/Patterns/Creational/Prototype.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/Creational/Prototype.pir lib/Patterns/Creational/Prototype.pm6

$(BLIB)/lib/Patterns/Creational/Factory_Method/HonoluluSoupFactoryMethodSubclass.pir : lib/Patterns/Creational/Factory_Method/HonoluluSoupFactoryMethodSubclass.pm6
	$(MKDIR) $(BLIB)/lib/Patterns/Creational/Factory_Method/
	$(CP) lib/Patterns/Creational/Factory_Method/HonoluluSoupFactoryMethodSubclass.pm6 $(BLIB)/lib/Patterns/Creational/Factory_Method/HonoluluSoupFactoryMethodSubclass.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/Creational/Factory_Method/HonoluluSoupFactoryMethodSubclass.pir lib/Patterns/Creational/Factory_Method/HonoluluSoupFactoryMethodSubclass.pm6

$(BLIB)/lib/Patterns/Creational/Factory_Method/BostonSoupFactoryMethodSubclass.pir : lib/Patterns/Creational/Factory_Method/BostonSoupFactoryMethodSubclass.pm6
	$(MKDIR) $(BLIB)/lib/Patterns/Creational/Factory_Method/
	$(CP) lib/Patterns/Creational/Factory_Method/BostonSoupFactoryMethodSubclass.pm6 $(BLIB)/lib/Patterns/Creational/Factory_Method/BostonSoupFactoryMethodSubclass.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/Creational/Factory_Method/BostonSoupFactoryMethodSubclass.pir lib/Patterns/Creational/Factory_Method/BostonSoupFactoryMethodSubclass.pm6

$(BLIB)/lib/Patterns/Creational/Factory_Method/SoupFactoryMethod.pir : lib/Patterns/Creational/Factory_Method/SoupFactoryMethod.pm6
	$(MKDIR) $(BLIB)/lib/Patterns/Creational/Factory_Method/
	$(CP) lib/Patterns/Creational/Factory_Method/SoupFactoryMethod.pm6 $(BLIB)/lib/Patterns/Creational/Factory_Method/SoupFactoryMethod.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/Creational/Factory_Method/SoupFactoryMethod.pir lib/Patterns/Creational/Factory_Method/SoupFactoryMethod.pm6

$(BLIB)/lib/Patterns/Creational/Abstract_Factory/BostonConcreteSoupFactory.pir : lib/Patterns/Creational/Abstract_Factory/BostonConcreteSoupFactory.pm6
	$(MKDIR) $(BLIB)/lib/Patterns/Creational/Abstract_Factory/
	$(CP) lib/Patterns/Creational/Abstract_Factory/BostonConcreteSoupFactory.pm6 $(BLIB)/lib/Patterns/Creational/Abstract_Factory/BostonConcreteSoupFactory.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/Creational/Abstract_Factory/BostonConcreteSoupFactory.pir lib/Patterns/Creational/Abstract_Factory/BostonConcreteSoupFactory.pm6

$(BLIB)/lib/Patterns/Creational/Abstract_Factory/HonoluluConcreteSoupFactory.pir : lib/Patterns/Creational/Abstract_Factory/HonoluluConcreteSoupFactory.pm6
	$(MKDIR) $(BLIB)/lib/Patterns/Creational/Abstract_Factory/
	$(CP) lib/Patterns/Creational/Abstract_Factory/HonoluluConcreteSoupFactory.pm6 $(BLIB)/lib/Patterns/Creational/Abstract_Factory/HonoluluConcreteSoupFactory.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/Creational/Abstract_Factory/HonoluluConcreteSoupFactory.pir lib/Patterns/Creational/Abstract_Factory/HonoluluConcreteSoupFactory.pm6

$(BLIB)/lib/Patterns/Creational/Abstract_Factory/AbstractSoupFactory.pir : lib/Patterns/Creational/Abstract_Factory/AbstractSoupFactory.pm6
	$(MKDIR) $(BLIB)/lib/Patterns/Creational/Abstract_Factory/
	$(CP) lib/Patterns/Creational/Abstract_Factory/AbstractSoupFactory.pm6 $(BLIB)/lib/Patterns/Creational/Abstract_Factory/AbstractSoupFactory.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/Creational/Abstract_Factory/AbstractSoupFactory.pir lib/Patterns/Creational/Abstract_Factory/AbstractSoupFactory.pm6

$(BLIB)/lib/Patterns/Creational/Prototype/AbstractSpoon.pir : lib/Patterns/Creational/Prototype/AbstractSpoon.pm6
	$(MKDIR) $(BLIB)/lib/Patterns/Creational/Prototype/
	$(CP) lib/Patterns/Creational/Prototype/AbstractSpoon.pm6 $(BLIB)/lib/Patterns/Creational/Prototype/AbstractSpoon.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/Creational/Prototype/AbstractSpoon.pir lib/Patterns/Creational/Prototype/AbstractSpoon.pm6

$(BLIB)/lib/Patterns/Creational/Prototype/SoupSpoon.pir : lib/Patterns/Creational/Prototype/SoupSpoon.pm6
	$(MKDIR) $(BLIB)/lib/Patterns/Creational/Prototype/
	$(CP) lib/Patterns/Creational/Prototype/SoupSpoon.pm6 $(BLIB)/lib/Patterns/Creational/Prototype/SoupSpoon.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/Creational/Prototype/SoupSpoon.pir lib/Patterns/Creational/Prototype/SoupSpoon.pm6

$(BLIB)/lib/Patterns/Creational/Prototype/SaladSpoon.pir : lib/Patterns/Creational/Prototype/SaladSpoon.pm6
	$(MKDIR) $(BLIB)/lib/Patterns/Creational/Prototype/
	$(CP) lib/Patterns/Creational/Prototype/SaladSpoon.pm6 $(BLIB)/lib/Patterns/Creational/Prototype/SaladSpoon.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/Creational/Prototype/SaladSpoon.pir lib/Patterns/Creational/Prototype/SaladSpoon.pm6

$(BLIB)/lib/Patterns/Creational/Prototype/SaladFork.pir : lib/Patterns/Creational/Prototype/SaladFork.pm6
	$(MKDIR) $(BLIB)/lib/Patterns/Creational/Prototype/
	$(CP) lib/Patterns/Creational/Prototype/SaladFork.pm6 $(BLIB)/lib/Patterns/Creational/Prototype/SaladFork.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/Creational/Prototype/SaladFork.pir lib/Patterns/Creational/Prototype/SaladFork.pm6

$(BLIB)/lib/Patterns/Creational/Prototype/AbstractFork.pir : lib/Patterns/Creational/Prototype/AbstractFork.pm6
	$(MKDIR) $(BLIB)/lib/Patterns/Creational/Prototype/
	$(CP) lib/Patterns/Creational/Prototype/AbstractFork.pm6 $(BLIB)/lib/Patterns/Creational/Prototype/AbstractFork.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/Creational/Prototype/AbstractFork.pir lib/Patterns/Creational/Prototype/AbstractFork.pm6

$(BLIB)/lib/Patterns/Creational/Prototype/Cloneable.pir : lib/Patterns/Creational/Prototype/Cloneable.pm6
	$(MKDIR) $(BLIB)/lib/Patterns/Creational/Prototype/
	$(CP) lib/Patterns/Creational/Prototype/Cloneable.pm6 $(BLIB)/lib/Patterns/Creational/Prototype/Cloneable.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/Creational/Prototype/Cloneable.pir lib/Patterns/Creational/Prototype/Cloneable.pm6

$(BLIB)/lib/Patterns/Creational/Prototype/PrototypeFactory.pir : lib/Patterns/Creational/Prototype/PrototypeFactory.pm6
	$(MKDIR) $(BLIB)/lib/Patterns/Creational/Prototype/
	$(CP) lib/Patterns/Creational/Prototype/PrototypeFactory.pm6 $(BLIB)/lib/Patterns/Creational/Prototype/PrototypeFactory.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/Creational/Prototype/PrototypeFactory.pir lib/Patterns/Creational/Prototype/PrototypeFactory.pm6

$(BLIB)/lib/Patterns/Structural/Decorator.pir : lib/Patterns/Structural/Decorator.pm6 $(BLIB)/lib/Patterns/Structural/Decorator/Tea.pir $(BLIB)/lib/Patterns/Structural/Decorator/TeaLeaves.pir $(BLIB)/lib/Patterns/Structural/Decorator/ChaiDecorator.pir
	$(MKDIR) $(BLIB)/lib/Patterns/Structural/
	$(CP) lib/Patterns/Structural/Decorator.pm6 $(BLIB)/lib/Patterns/Structural/Decorator.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/Structural/Decorator.pir lib/Patterns/Structural/Decorator.pm6

$(BLIB)/lib/Patterns/Structural/Adapter.pir : lib/Patterns/Structural/Adapter.pm6 $(BLIB)/lib/Patterns/Structural/Adapter/TeaBag.pir $(BLIB)/lib/Patterns/Structural/Adapter/TeaCup.pir $(BLIB)/lib/Patterns/Structural/Adapter/TeaBall.pir $(BLIB)/lib/Patterns/Structural/Adapter/LooseLeafTea.pir
	$(MKDIR) $(BLIB)/lib/Patterns/Structural/
	$(CP) lib/Patterns/Structural/Adapter.pm6 $(BLIB)/lib/Patterns/Structural/Adapter.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/Structural/Adapter.pir lib/Patterns/Structural/Adapter.pm6

$(BLIB)/lib/Patterns/Structural/Facade.pir : lib/Patterns/Structural/Facade.pm6 $(BLIB)/lib/Patterns/Structural/Facade/FacadeTeaBag.pir $(BLIB)/lib/Patterns/Structural/Facade/FacadeWater.pir $(BLIB)/lib/Patterns/Structural/Facade/FacadeCuppaMaker.pir $(BLIB)/lib/Patterns/Structural/Facade/FacadeTeaCup.pir
	$(MKDIR) $(BLIB)/lib/Patterns/Structural/
	$(CP) lib/Patterns/Structural/Facade.pm6 $(BLIB)/lib/Patterns/Structural/Facade.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/Structural/Facade.pir lib/Patterns/Structural/Facade.pm6

$(BLIB)/lib/Patterns/Structural/Proxy.pir : lib/Patterns/Structural/Proxy.pm6 $(BLIB)/lib/Patterns/Structural/Proxy/PotOfTeaProxy.pir $(BLIB)/lib/Patterns/Structural/Proxy/PotOfTea.pir $(BLIB)/lib/Patterns/Structural/Proxy/PotOfTeaInterface.pir
	$(MKDIR) $(BLIB)/lib/Patterns/Structural/
	$(CP) lib/Patterns/Structural/Proxy.pm6 $(BLIB)/lib/Patterns/Structural/Proxy.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/Structural/Proxy.pir lib/Patterns/Structural/Proxy.pm6

$(BLIB)/lib/Patterns/Structural/Flyweight/TeaFlavorFactory.pir : lib/Patterns/Structural/Flyweight/TeaFlavorFactory.pm6
	$(MKDIR) $(BLIB)/lib/Patterns/Structural/Flyweight/
	$(CP) lib/Patterns/Structural/Flyweight/TeaFlavorFactory.pm6 $(BLIB)/lib/Patterns/Structural/Flyweight/TeaFlavorFactory.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/Structural/Flyweight/TeaFlavorFactory.pir lib/Patterns/Structural/Flyweight/TeaFlavorFactory.pm6

$(BLIB)/lib/Patterns/Structural/Flyweight/TeaOrder.pir : lib/Patterns/Structural/Flyweight/TeaOrder.pm6
	$(MKDIR) $(BLIB)/lib/Patterns/Structural/Flyweight/
	$(CP) lib/Patterns/Structural/Flyweight/TeaOrder.pm6 $(BLIB)/lib/Patterns/Structural/Flyweight/TeaOrder.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/Structural/Flyweight/TeaOrder.pir lib/Patterns/Structural/Flyweight/TeaOrder.pm6

$(BLIB)/lib/Patterns/Structural/Flyweight/TeaOrderContext.pir : lib/Patterns/Structural/Flyweight/TeaOrderContext.pm6
	$(MKDIR) $(BLIB)/lib/Patterns/Structural/Flyweight/
	$(CP) lib/Patterns/Structural/Flyweight/TeaOrderContext.pm6 $(BLIB)/lib/Patterns/Structural/Flyweight/TeaOrderContext.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/Structural/Flyweight/TeaOrderContext.pir lib/Patterns/Structural/Flyweight/TeaOrderContext.pm6

$(BLIB)/lib/Patterns/Structural/Flyweight/TeaFlavor.pir : lib/Patterns/Structural/Flyweight/TeaFlavor.pm6
	$(MKDIR) $(BLIB)/lib/Patterns/Structural/Flyweight/
	$(CP) lib/Patterns/Structural/Flyweight/TeaFlavor.pm6 $(BLIB)/lib/Patterns/Structural/Flyweight/TeaFlavor.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/Structural/Flyweight/TeaFlavor.pir lib/Patterns/Structural/Flyweight/TeaFlavor.pm6

$(BLIB)/lib/Patterns/Structural/Facade/FacadeTeaBag.pir : lib/Patterns/Structural/Facade/FacadeTeaBag.pm6
	$(MKDIR) $(BLIB)/lib/Patterns/Structural/Facade/
	$(CP) lib/Patterns/Structural/Facade/FacadeTeaBag.pm6 $(BLIB)/lib/Patterns/Structural/Facade/FacadeTeaBag.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/Structural/Facade/FacadeTeaBag.pir lib/Patterns/Structural/Facade/FacadeTeaBag.pm6

$(BLIB)/lib/Patterns/Structural/Facade/FacadeTeaCup.pir : lib/Patterns/Structural/Facade/FacadeTeaCup.pm6
	$(MKDIR) $(BLIB)/lib/Patterns/Structural/Facade/
	$(CP) lib/Patterns/Structural/Facade/FacadeTeaCup.pm6 $(BLIB)/lib/Patterns/Structural/Facade/FacadeTeaCup.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/Structural/Facade/FacadeTeaCup.pir lib/Patterns/Structural/Facade/FacadeTeaCup.pm6

$(BLIB)/lib/Patterns/Structural/Facade/FacadeCuppaMaker.pir : lib/Patterns/Structural/Facade/FacadeCuppaMaker.pm6
	$(MKDIR) $(BLIB)/lib/Patterns/Structural/Facade/
	$(CP) lib/Patterns/Structural/Facade/FacadeCuppaMaker.pm6 $(BLIB)/lib/Patterns/Structural/Facade/FacadeCuppaMaker.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/Structural/Facade/FacadeCuppaMaker.pir lib/Patterns/Structural/Facade/FacadeCuppaMaker.pm6

$(BLIB)/lib/Patterns/Structural/Facade/FacadeWater.pir : lib/Patterns/Structural/Facade/FacadeWater.pm6
	$(MKDIR) $(BLIB)/lib/Patterns/Structural/Facade/
	$(CP) lib/Patterns/Structural/Facade/FacadeWater.pm6 $(BLIB)/lib/Patterns/Structural/Facade/FacadeWater.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/Structural/Facade/FacadeWater.pir lib/Patterns/Structural/Facade/FacadeWater.pm6

$(BLIB)/lib/Patterns/Structural/Flyweight.pir : lib/Patterns/Structural/Flyweight.pm6 $(BLIB)/lib/Patterns/Structural/Flyweight/TeaOrder.pir $(BLIB)/lib/Patterns/Structural/Flyweight/TeaFlavor.pir $(BLIB)/lib/Patterns/Structural/Flyweight/TeaFlavorFactory.pir $(BLIB)/lib/Patterns/Structural/Flyweight/TeaOrderContext.pir
	$(MKDIR) $(BLIB)/lib/Patterns/Structural/
	$(CP) lib/Patterns/Structural/Flyweight.pm6 $(BLIB)/lib/Patterns/Structural/Flyweight.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/Structural/Flyweight.pir lib/Patterns/Structural/Flyweight.pm6

$(BLIB)/lib/Patterns/Structural/Proxy/PotOfTea.pir : lib/Patterns/Structural/Proxy/PotOfTea.pm6
	$(MKDIR) $(BLIB)/lib/Patterns/Structural/Proxy/
	$(CP) lib/Patterns/Structural/Proxy/PotOfTea.pm6 $(BLIB)/lib/Patterns/Structural/Proxy/PotOfTea.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/Structural/Proxy/PotOfTea.pir lib/Patterns/Structural/Proxy/PotOfTea.pm6

$(BLIB)/lib/Patterns/Structural/Proxy/PotOfTeaInterface.pir : lib/Patterns/Structural/Proxy/PotOfTeaInterface.pm6
	$(MKDIR) $(BLIB)/lib/Patterns/Structural/Proxy/
	$(CP) lib/Patterns/Structural/Proxy/PotOfTeaInterface.pm6 $(BLIB)/lib/Patterns/Structural/Proxy/PotOfTeaInterface.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/Structural/Proxy/PotOfTeaInterface.pir lib/Patterns/Structural/Proxy/PotOfTeaInterface.pm6

$(BLIB)/lib/Patterns/Structural/Proxy/PotOfTeaProxy.pir : lib/Patterns/Structural/Proxy/PotOfTeaProxy.pm6
	$(MKDIR) $(BLIB)/lib/Patterns/Structural/Proxy/
	$(CP) lib/Patterns/Structural/Proxy/PotOfTeaProxy.pm6 $(BLIB)/lib/Patterns/Structural/Proxy/PotOfTeaProxy.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/Structural/Proxy/PotOfTeaProxy.pir lib/Patterns/Structural/Proxy/PotOfTeaProxy.pm6

$(BLIB)/lib/Patterns/Structural/Composite/TinOfTeaBags.pir : lib/Patterns/Structural/Composite/TinOfTeaBags.pm6
	$(MKDIR) $(BLIB)/lib/Patterns/Structural/Composite/
	$(CP) lib/Patterns/Structural/Composite/TinOfTeaBags.pm6 $(BLIB)/lib/Patterns/Structural/Composite/TinOfTeaBags.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/Structural/Composite/TinOfTeaBags.pir lib/Patterns/Structural/Composite/TinOfTeaBags.pm6

$(BLIB)/lib/Patterns/Structural/Composite/OneTeaBag.pir : lib/Patterns/Structural/Composite/OneTeaBag.pm6
	$(MKDIR) $(BLIB)/lib/Patterns/Structural/Composite/
	$(CP) lib/Patterns/Structural/Composite/OneTeaBag.pm6 $(BLIB)/lib/Patterns/Structural/Composite/OneTeaBag.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/Structural/Composite/OneTeaBag.pir lib/Patterns/Structural/Composite/OneTeaBag.pm6

$(BLIB)/lib/Patterns/Structural/Composite/TeaBags.pir : lib/Patterns/Structural/Composite/TeaBags.pm6
	$(MKDIR) $(BLIB)/lib/Patterns/Structural/Composite/
	$(CP) lib/Patterns/Structural/Composite/TeaBags.pm6 $(BLIB)/lib/Patterns/Structural/Composite/TeaBags.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/Structural/Composite/TeaBags.pir lib/Patterns/Structural/Composite/TeaBags.pm6

$(BLIB)/lib/Patterns/Structural/Adapter/TeaCup.pir : lib/Patterns/Structural/Adapter/TeaCup.pm6
	$(MKDIR) $(BLIB)/lib/Patterns/Structural/Adapter/
	$(CP) lib/Patterns/Structural/Adapter/TeaCup.pm6 $(BLIB)/lib/Patterns/Structural/Adapter/TeaCup.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/Structural/Adapter/TeaCup.pir lib/Patterns/Structural/Adapter/TeaCup.pm6

$(BLIB)/lib/Patterns/Structural/Adapter/LooseLeafTea.pir : lib/Patterns/Structural/Adapter/LooseLeafTea.pm6
	$(MKDIR) $(BLIB)/lib/Patterns/Structural/Adapter/
	$(CP) lib/Patterns/Structural/Adapter/LooseLeafTea.pm6 $(BLIB)/lib/Patterns/Structural/Adapter/LooseLeafTea.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/Structural/Adapter/LooseLeafTea.pir lib/Patterns/Structural/Adapter/LooseLeafTea.pm6

$(BLIB)/lib/Patterns/Structural/Adapter/TeaBall.pir : lib/Patterns/Structural/Adapter/TeaBall.pm6
	$(MKDIR) $(BLIB)/lib/Patterns/Structural/Adapter/
	$(CP) lib/Patterns/Structural/Adapter/TeaBall.pm6 $(BLIB)/lib/Patterns/Structural/Adapter/TeaBall.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/Structural/Adapter/TeaBall.pir lib/Patterns/Structural/Adapter/TeaBall.pm6

$(BLIB)/lib/Patterns/Structural/Adapter/TeaBag.pir : lib/Patterns/Structural/Adapter/TeaBag.pm6
	$(MKDIR) $(BLIB)/lib/Patterns/Structural/Adapter/
	$(CP) lib/Patterns/Structural/Adapter/TeaBag.pm6 $(BLIB)/lib/Patterns/Structural/Adapter/TeaBag.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/Structural/Adapter/TeaBag.pir lib/Patterns/Structural/Adapter/TeaBag.pm6

$(BLIB)/lib/Patterns/Structural/Decorator/Tea.pir : lib/Patterns/Structural/Decorator/Tea.pm6
	$(MKDIR) $(BLIB)/lib/Patterns/Structural/Decorator/
	$(CP) lib/Patterns/Structural/Decorator/Tea.pm6 $(BLIB)/lib/Patterns/Structural/Decorator/Tea.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/Structural/Decorator/Tea.pir lib/Patterns/Structural/Decorator/Tea.pm6

$(BLIB)/lib/Patterns/Structural/Decorator/ChaiDecorator.pir : lib/Patterns/Structural/Decorator/ChaiDecorator.pm6
	$(MKDIR) $(BLIB)/lib/Patterns/Structural/Decorator/
	$(CP) lib/Patterns/Structural/Decorator/ChaiDecorator.pm6 $(BLIB)/lib/Patterns/Structural/Decorator/ChaiDecorator.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/Structural/Decorator/ChaiDecorator.pir lib/Patterns/Structural/Decorator/ChaiDecorator.pm6

$(BLIB)/lib/Patterns/Structural/Decorator/TeaLeaves.pir : lib/Patterns/Structural/Decorator/TeaLeaves.pm6
	$(MKDIR) $(BLIB)/lib/Patterns/Structural/Decorator/
	$(CP) lib/Patterns/Structural/Decorator/TeaLeaves.pm6 $(BLIB)/lib/Patterns/Structural/Decorator/TeaLeaves.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/Structural/Decorator/TeaLeaves.pir lib/Patterns/Structural/Decorator/TeaLeaves.pm6

$(BLIB)/lib/Patterns/Structural/Bridge/SodaImpSingleton.pir : lib/Patterns/Structural/Bridge/SodaImpSingleton.pm6
	$(MKDIR) $(BLIB)/lib/Patterns/Structural/Bridge/
	$(CP) lib/Patterns/Structural/Bridge/SodaImpSingleton.pm6 $(BLIB)/lib/Patterns/Structural/Bridge/SodaImpSingleton.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/Structural/Bridge/SodaImpSingleton.pir lib/Patterns/Structural/Bridge/SodaImpSingleton.pm6

$(BLIB)/lib/Patterns/Structural/Bridge/SuperSizeSoda.pir : lib/Patterns/Structural/Bridge/SuperSizeSoda.pm6
	$(MKDIR) $(BLIB)/lib/Patterns/Structural/Bridge/
	$(CP) lib/Patterns/Structural/Bridge/SuperSizeSoda.pm6 $(BLIB)/lib/Patterns/Structural/Bridge/SuperSizeSoda.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/Structural/Bridge/SuperSizeSoda.pir lib/Patterns/Structural/Bridge/SuperSizeSoda.pm6

$(BLIB)/lib/Patterns/Structural/Bridge/GrapeSodaImp.pir : lib/Patterns/Structural/Bridge/GrapeSodaImp.pm6
	$(MKDIR) $(BLIB)/lib/Patterns/Structural/Bridge/
	$(CP) lib/Patterns/Structural/Bridge/GrapeSodaImp.pm6 $(BLIB)/lib/Patterns/Structural/Bridge/GrapeSodaImp.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/Structural/Bridge/GrapeSodaImp.pir lib/Patterns/Structural/Bridge/GrapeSodaImp.pm6

$(BLIB)/lib/Patterns/Structural/Bridge/MediumSoda.pir : lib/Patterns/Structural/Bridge/MediumSoda.pm6
	$(MKDIR) $(BLIB)/lib/Patterns/Structural/Bridge/
	$(CP) lib/Patterns/Structural/Bridge/MediumSoda.pm6 $(BLIB)/lib/Patterns/Structural/Bridge/MediumSoda.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/Structural/Bridge/MediumSoda.pir lib/Patterns/Structural/Bridge/MediumSoda.pm6

$(BLIB)/lib/Patterns/Structural/Bridge/SodaImp.pir : lib/Patterns/Structural/Bridge/SodaImp.pm6
	$(MKDIR) $(BLIB)/lib/Patterns/Structural/Bridge/
	$(CP) lib/Patterns/Structural/Bridge/SodaImp.pm6 $(BLIB)/lib/Patterns/Structural/Bridge/SodaImp.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/Structural/Bridge/SodaImp.pir lib/Patterns/Structural/Bridge/SodaImp.pm6

$(BLIB)/lib/Patterns/Structural/Bridge/CherrySodaImp.pir : lib/Patterns/Structural/Bridge/CherrySodaImp.pm6
	$(MKDIR) $(BLIB)/lib/Patterns/Structural/Bridge/
	$(CP) lib/Patterns/Structural/Bridge/CherrySodaImp.pm6 $(BLIB)/lib/Patterns/Structural/Bridge/CherrySodaImp.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/Structural/Bridge/CherrySodaImp.pir lib/Patterns/Structural/Bridge/CherrySodaImp.pm6

$(BLIB)/lib/Patterns/Structural/Bridge/OrangeSodaImp.pir : lib/Patterns/Structural/Bridge/OrangeSodaImp.pm6
	$(MKDIR) $(BLIB)/lib/Patterns/Structural/Bridge/
	$(CP) lib/Patterns/Structural/Bridge/OrangeSodaImp.pm6 $(BLIB)/lib/Patterns/Structural/Bridge/OrangeSodaImp.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/Structural/Bridge/OrangeSodaImp.pir lib/Patterns/Structural/Bridge/OrangeSodaImp.pm6

$(BLIB)/lib/Patterns/Structural/Bridge/Soda.pir : lib/Patterns/Structural/Bridge/Soda.pm6
	$(MKDIR) $(BLIB)/lib/Patterns/Structural/Bridge/
	$(CP) lib/Patterns/Structural/Bridge/Soda.pm6 $(BLIB)/lib/Patterns/Structural/Bridge/Soda.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/Structural/Bridge/Soda.pir lib/Patterns/Structural/Bridge/Soda.pm6

$(BLIB)/lib/Patterns/Structural/Composite.pir : lib/Patterns/Structural/Composite.pm6 $(BLIB)/lib/Patterns/Structural/Composite/TeaBags.pir $(BLIB)/lib/Patterns/Structural/Composite/TinOfTeaBags.pir $(BLIB)/lib/Patterns/Structural/Composite/OneTeaBag.pir
	$(MKDIR) $(BLIB)/lib/Patterns/Structural/
	$(CP) lib/Patterns/Structural/Composite.pm6 $(BLIB)/lib/Patterns/Structural/Composite.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/Structural/Composite.pir lib/Patterns/Structural/Composite.pm6

$(BLIB)/lib/Patterns/Structural/Bridge.pir : lib/Patterns/Structural/Bridge.pm6 $(BLIB)/lib/Patterns/Structural/Bridge/SodaImp.pir $(BLIB)/lib/Patterns/Structural/Bridge/CherrySodaImp.pir $(BLIB)/lib/Patterns/Structural/Bridge/GrapeSodaImp.pir $(BLIB)/lib/Patterns/Structural/Bridge/OrangeSodaImp.pir $(BLIB)/lib/Patterns/Structural/Bridge/SuperSizeSoda.pir $(BLIB)/lib/Patterns/Structural/Bridge/Soda.pir $(BLIB)/lib/Patterns/Structural/Bridge/MediumSoda.pir $(BLIB)/lib/Patterns/Structural/Bridge/SodaImpSingleton.pir
	$(MKDIR) $(BLIB)/lib/Patterns/Structural/
	$(CP) lib/Patterns/Structural/Bridge.pm6 $(BLIB)/lib/Patterns/Structural/Bridge.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/Structural/Bridge.pir lib/Patterns/Structural/Bridge.pm6

$(BLIB)/lib/Patterns/common/Minnestrone.pir : lib/Patterns/common/Minnestrone.pm6
	$(MKDIR) $(BLIB)/lib/Patterns/common/
	$(CP) lib/Patterns/common/Minnestrone.pm6 $(BLIB)/lib/Patterns/common/Minnestrone.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/common/Minnestrone.pir lib/Patterns/common/Minnestrone.pm6

$(BLIB)/lib/Patterns/common/BostonFishChowder.pir : lib/Patterns/common/BostonFishChowder.pm6
	$(MKDIR) $(BLIB)/lib/Patterns/common/
	$(CP) lib/Patterns/common/BostonFishChowder.pm6 $(BLIB)/lib/Patterns/common/BostonFishChowder.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/common/BostonFishChowder.pir lib/Patterns/common/BostonFishChowder.pm6

$(BLIB)/lib/Patterns/common/HonoluluClamChowder.pir : lib/Patterns/common/HonoluluClamChowder.pm6
	$(MKDIR) $(BLIB)/lib/Patterns/common/
	$(CP) lib/Patterns/common/HonoluluClamChowder.pm6 $(BLIB)/lib/Patterns/common/HonoluluClamChowder.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/common/HonoluluClamChowder.pir lib/Patterns/common/HonoluluClamChowder.pm6

$(BLIB)/lib/Patterns/common/TofuSoup.pir : lib/Patterns/common/TofuSoup.pm6
	$(MKDIR) $(BLIB)/lib/Patterns/common/
	$(CP) lib/Patterns/common/TofuSoup.pm6 $(BLIB)/lib/Patterns/common/TofuSoup.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/common/TofuSoup.pir lib/Patterns/common/TofuSoup.pm6

$(BLIB)/lib/Patterns/common/SoupBuffet.pir : lib/Patterns/common/SoupBuffet.pm6
	$(MKDIR) $(BLIB)/lib/Patterns/common/
	$(CP) lib/Patterns/common/SoupBuffet.pm6 $(BLIB)/lib/Patterns/common/SoupBuffet.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/common/SoupBuffet.pir lib/Patterns/common/SoupBuffet.pm6

$(BLIB)/lib/Patterns/common/Soup.pir : lib/Patterns/common/Soup.pm6
	$(MKDIR) $(BLIB)/lib/Patterns/common/
	$(CP) lib/Patterns/common/Soup.pm6 $(BLIB)/lib/Patterns/common/Soup.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/common/Soup.pir lib/Patterns/common/Soup.pm6

$(BLIB)/lib/Patterns/common/PastaFazul.pir : lib/Patterns/common/PastaFazul.pm6
	$(MKDIR) $(BLIB)/lib/Patterns/common/
	$(CP) lib/Patterns/common/PastaFazul.pm6 $(BLIB)/lib/Patterns/common/PastaFazul.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/common/PastaFazul.pir lib/Patterns/common/PastaFazul.pm6

$(BLIB)/lib/Patterns/common/ChickenSoup.pir : lib/Patterns/common/ChickenSoup.pm6
	$(MKDIR) $(BLIB)/lib/Patterns/common/
	$(CP) lib/Patterns/common/ChickenSoup.pm6 $(BLIB)/lib/Patterns/common/ChickenSoup.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/common/ChickenSoup.pir lib/Patterns/common/ChickenSoup.pm6

$(BLIB)/lib/Patterns/common/ClamChowder.pir : lib/Patterns/common/ClamChowder.pm6
	$(MKDIR) $(BLIB)/lib/Patterns/common/
	$(CP) lib/Patterns/common/ClamChowder.pm6 $(BLIB)/lib/Patterns/common/ClamChowder.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/common/ClamChowder.pir lib/Patterns/common/ClamChowder.pm6

$(BLIB)/lib/Patterns/common/FishChowder.pir : lib/Patterns/common/FishChowder.pm6
	$(MKDIR) $(BLIB)/lib/Patterns/common/
	$(CP) lib/Patterns/common/FishChowder.pm6 $(BLIB)/lib/Patterns/common/FishChowder.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/common/FishChowder.pir lib/Patterns/common/FishChowder.pm6

$(BLIB)/lib/Patterns/common/HonoluluFishChowder.pir : lib/Patterns/common/HonoluluFishChowder.pm6
	$(MKDIR) $(BLIB)/lib/Patterns/common/
	$(CP) lib/Patterns/common/HonoluluFishChowder.pm6 $(BLIB)/lib/Patterns/common/HonoluluFishChowder.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/common/HonoluluFishChowder.pir lib/Patterns/common/HonoluluFishChowder.pm6

$(BLIB)/lib/Patterns/common/VegetableSoup.pir : lib/Patterns/common/VegetableSoup.pm6
	$(MKDIR) $(BLIB)/lib/Patterns/common/
	$(CP) lib/Patterns/common/VegetableSoup.pm6 $(BLIB)/lib/Patterns/common/VegetableSoup.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/common/VegetableSoup.pir lib/Patterns/common/VegetableSoup.pm6

$(BLIB)/lib/Patterns/common/BostonClamChowder.pir : lib/Patterns/common/BostonClamChowder.pm6
	$(MKDIR) $(BLIB)/lib/Patterns/common/
	$(CP) lib/Patterns/common/BostonClamChowder.pm6 $(BLIB)/lib/Patterns/common/BostonClamChowder.pm6
	PERL6LIB=$(P6LIB) $(PERL6) --target=pir --output=$(BLIB)/lib/Patterns/common/BostonClamChowder.pir lib/Patterns/common/BostonClamChowder.pm6


test: build
	env PERL6LIB=$(P6LIB) prove -e '$(PERL6)' -r t/

loudtest: build
	env PERL6LIB=$(P6LIB) prove -ve '$(PERL6)' -r t/

timetest: build
	env PERL6LIB=$(P6LIB) PERL6_TEST_TIMES=1 prove -ve '$(PERL6)' -r t/

install: $(BLIB_PIRS)
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/
	$(CP) $(BLIB)/lib/Patterns.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns.pm6
	$(CP) $(BLIB)/lib/Patterns.pir $(DESTDIR)$(PREFIX)/lib/Patterns.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/
	$(CP) $(BLIB)/lib/Patterns/Behavioral/Interpreter.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Interpreter.pm6
	$(CP) $(BLIB)/lib/Patterns/Behavioral/Interpreter.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Interpreter.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/
	$(CP) $(BLIB)/lib/Patterns/Behavioral/Visitor.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Visitor.pm6
	$(CP) $(BLIB)/lib/Patterns/Behavioral/Visitor.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Visitor.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Interpreter/
	$(CP) $(BLIB)/lib/Patterns/Behavioral/Interpreter/DvdTitleActorExpression.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Interpreter/DvdTitleActorExpression.pm6
	$(CP) $(BLIB)/lib/Patterns/Behavioral/Interpreter/DvdTitleActorExpression.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Interpreter/DvdTitleActorExpression.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Interpreter/
	$(CP) $(BLIB)/lib/Patterns/Behavioral/Interpreter/DvdActorExpression.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Interpreter/DvdActorExpression.pm6
	$(CP) $(BLIB)/lib/Patterns/Behavioral/Interpreter/DvdActorExpression.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Interpreter/DvdActorExpression.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Interpreter/
	$(CP) $(BLIB)/lib/Patterns/Behavioral/Interpreter/DvdInterpreterClient.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Interpreter/DvdInterpreterClient.pm6
	$(CP) $(BLIB)/lib/Patterns/Behavioral/Interpreter/DvdInterpreterClient.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Interpreter/DvdInterpreterClient.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Interpreter/
	$(CP) $(BLIB)/lib/Patterns/Behavioral/Interpreter/DvdActorTitleExpression.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Interpreter/DvdActorTitleExpression.pm6
	$(CP) $(BLIB)/lib/Patterns/Behavioral/Interpreter/DvdActorTitleExpression.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Interpreter/DvdActorTitleExpression.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Interpreter/
	$(CP) $(BLIB)/lib/Patterns/Behavioral/Interpreter/DvdAbstractExpression.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Interpreter/DvdAbstractExpression.pm6
	$(CP) $(BLIB)/lib/Patterns/Behavioral/Interpreter/DvdAbstractExpression.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Interpreter/DvdAbstractExpression.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Interpreter/
	$(CP) $(BLIB)/lib/Patterns/Behavioral/Interpreter/TitleAndActor.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Interpreter/TitleAndActor.pm6
	$(CP) $(BLIB)/lib/Patterns/Behavioral/Interpreter/TitleAndActor.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Interpreter/TitleAndActor.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Interpreter/
	$(CP) $(BLIB)/lib/Patterns/Behavioral/Interpreter/DvdInterpreterContext.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Interpreter/DvdInterpreterContext.pm6
	$(CP) $(BLIB)/lib/Patterns/Behavioral/Interpreter/DvdInterpreterContext.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Interpreter/DvdInterpreterContext.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Interpreter/
	$(CP) $(BLIB)/lib/Patterns/Behavioral/Interpreter/DvdTitleExpression.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Interpreter/DvdTitleExpression.pm6
	$(CP) $(BLIB)/lib/Patterns/Behavioral/Interpreter/DvdTitleExpression.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Interpreter/DvdTitleExpression.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/
	$(CP) $(BLIB)/lib/Patterns/Behavioral/Iterator.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Iterator.pm6
	$(CP) $(BLIB)/lib/Patterns/Behavioral/Iterator.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Iterator.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/
	$(CP) $(BLIB)/lib/Patterns/Behavioral/Memento.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Memento.pm6
	$(CP) $(BLIB)/lib/Patterns/Behavioral/Memento.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Memento.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/
	$(CP) $(BLIB)/lib/Patterns/Behavioral/Chain_Of_Responsibility.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Chain_Of_Responsibility.pm6
	$(CP) $(BLIB)/lib/Patterns/Behavioral/Chain_Of_Responsibility.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Chain_Of_Responsibility.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Observer/
	$(CP) $(BLIB)/lib/Patterns/Behavioral/Observer/DvdRelease.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Observer/DvdRelease.pm6
	$(CP) $(BLIB)/lib/Patterns/Behavioral/Observer/DvdRelease.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Observer/DvdRelease.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Observer/
	$(CP) $(BLIB)/lib/Patterns/Behavioral/Observer/DvdSubscriber.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Observer/DvdSubscriber.pm6
	$(CP) $(BLIB)/lib/Patterns/Behavioral/Observer/DvdSubscriber.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Observer/DvdSubscriber.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Observer/
	$(CP) $(BLIB)/lib/Patterns/Behavioral/Observer/DvdReleaseByCategory.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Observer/DvdReleaseByCategory.pm6
	$(CP) $(BLIB)/lib/Patterns/Behavioral/Observer/DvdReleaseByCategory.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Observer/DvdReleaseByCategory.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/State/
	$(CP) $(BLIB)/lib/Patterns/Behavioral/State/DvdStateNameStars.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/State/DvdStateNameStars.pm6
	$(CP) $(BLIB)/lib/Patterns/Behavioral/State/DvdStateNameStars.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/State/DvdStateNameStars.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/State/
	$(CP) $(BLIB)/lib/Patterns/Behavioral/State/DvdStateName.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/State/DvdStateName.pm6
	$(CP) $(BLIB)/lib/Patterns/Behavioral/State/DvdStateName.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/State/DvdStateName.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/State/
	$(CP) $(BLIB)/lib/Patterns/Behavioral/State/DvdStateContext.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/State/DvdStateContext.pm6
	$(CP) $(BLIB)/lib/Patterns/Behavioral/State/DvdStateContext.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/State/DvdStateContext.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/State/
	$(CP) $(BLIB)/lib/Patterns/Behavioral/State/DvdStateNameExclaim.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/State/DvdStateNameExclaim.pm6
	$(CP) $(BLIB)/lib/Patterns/Behavioral/State/DvdStateNameExclaim.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/State/DvdStateNameExclaim.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/
	$(CP) $(BLIB)/lib/Patterns/Behavioral/Command.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Command.pm6
	$(CP) $(BLIB)/lib/Patterns/Behavioral/Command.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Command.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Template_Method/
	$(CP) $(BLIB)/lib/Patterns/Behavioral/Template_Method/DvdTitleInfo.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Template_Method/DvdTitleInfo.pm6
	$(CP) $(BLIB)/lib/Patterns/Behavioral/Template_Method/DvdTitleInfo.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Template_Method/DvdTitleInfo.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Template_Method/
	$(CP) $(BLIB)/lib/Patterns/Behavioral/Template_Method/GameTitleInfo.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Template_Method/GameTitleInfo.pm6
	$(CP) $(BLIB)/lib/Patterns/Behavioral/Template_Method/GameTitleInfo.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Template_Method/GameTitleInfo.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Template_Method/
	$(CP) $(BLIB)/lib/Patterns/Behavioral/Template_Method/BookTitleInfo.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Template_Method/BookTitleInfo.pm6
	$(CP) $(BLIB)/lib/Patterns/Behavioral/Template_Method/BookTitleInfo.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Template_Method/BookTitleInfo.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Template_Method/
	$(CP) $(BLIB)/lib/Patterns/Behavioral/Template_Method/TitleInfo.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Template_Method/TitleInfo.pm6
	$(CP) $(BLIB)/lib/Patterns/Behavioral/Template_Method/TitleInfo.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Template_Method/TitleInfo.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/
	$(CP) $(BLIB)/lib/Patterns/Behavioral/Strategy.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Strategy.pm6
	$(CP) $(BLIB)/lib/Patterns/Behavioral/Strategy.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Strategy.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Visitor/
	$(CP) $(BLIB)/lib/Patterns/Behavioral/Visitor/DvdInfo.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Visitor/DvdInfo.pm6
	$(CP) $(BLIB)/lib/Patterns/Behavioral/Visitor/DvdInfo.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Visitor/DvdInfo.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Visitor/
	$(CP) $(BLIB)/lib/Patterns/Behavioral/Visitor/BookInfo.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Visitor/BookInfo.pm6
	$(CP) $(BLIB)/lib/Patterns/Behavioral/Visitor/BookInfo.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Visitor/BookInfo.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Visitor/
	$(CP) $(BLIB)/lib/Patterns/Behavioral/Visitor/TitleShortBlurbVisitor.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Visitor/TitleShortBlurbVisitor.pm6
	$(CP) $(BLIB)/lib/Patterns/Behavioral/Visitor/TitleShortBlurbVisitor.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Visitor/TitleShortBlurbVisitor.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Visitor/
	$(CP) $(BLIB)/lib/Patterns/Behavioral/Visitor/AbstractTitleInfo.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Visitor/AbstractTitleInfo.pm6
	$(CP) $(BLIB)/lib/Patterns/Behavioral/Visitor/AbstractTitleInfo.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Visitor/AbstractTitleInfo.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Visitor/
	$(CP) $(BLIB)/lib/Patterns/Behavioral/Visitor/TitleLongBlurbVisitor.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Visitor/TitleLongBlurbVisitor.pm6
	$(CP) $(BLIB)/lib/Patterns/Behavioral/Visitor/TitleLongBlurbVisitor.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Visitor/TitleLongBlurbVisitor.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Visitor/
	$(CP) $(BLIB)/lib/Patterns/Behavioral/Visitor/GameInfo.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Visitor/GameInfo.pm6
	$(CP) $(BLIB)/lib/Patterns/Behavioral/Visitor/GameInfo.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Visitor/GameInfo.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Visitor/
	$(CP) $(BLIB)/lib/Patterns/Behavioral/Visitor/TitleBlurbVisitor.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Visitor/TitleBlurbVisitor.pm6
	$(CP) $(BLIB)/lib/Patterns/Behavioral/Visitor/TitleBlurbVisitor.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Visitor/TitleBlurbVisitor.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Mediator/
	$(CP) $(BLIB)/lib/Patterns/Behavioral/Mediator/DvdLowercaseTitle.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Mediator/DvdLowercaseTitle.pm6
	$(CP) $(BLIB)/lib/Patterns/Behavioral/Mediator/DvdLowercaseTitle.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Mediator/DvdLowercaseTitle.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Mediator/
	$(CP) $(BLIB)/lib/Patterns/Behavioral/Mediator/DvdUppercaseTitle.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Mediator/DvdUppercaseTitle.pm6
	$(CP) $(BLIB)/lib/Patterns/Behavioral/Mediator/DvdUppercaseTitle.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Mediator/DvdUppercaseTitle.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Mediator/
	$(CP) $(BLIB)/lib/Patterns/Behavioral/Mediator/DvdMediator.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Mediator/DvdMediator.pm6
	$(CP) $(BLIB)/lib/Patterns/Behavioral/Mediator/DvdMediator.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Mediator/DvdMediator.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Mediator/
	$(CP) $(BLIB)/lib/Patterns/Behavioral/Mediator/DvdTitle.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Mediator/DvdTitle.pm6
	$(CP) $(BLIB)/lib/Patterns/Behavioral/Mediator/DvdTitle.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Mediator/DvdTitle.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Chain_Of_Responsibility/
	$(CP) $(BLIB)/lib/Patterns/Behavioral/Chain_Of_Responsibility/DvdSubCategory.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Chain_Of_Responsibility/DvdSubCategory.pm6
	$(CP) $(BLIB)/lib/Patterns/Behavioral/Chain_Of_Responsibility/DvdSubCategory.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Chain_Of_Responsibility/DvdSubCategory.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Chain_Of_Responsibility/
	$(CP) $(BLIB)/lib/Patterns/Behavioral/Chain_Of_Responsibility/DvdCategory.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Chain_Of_Responsibility/DvdCategory.pm6
	$(CP) $(BLIB)/lib/Patterns/Behavioral/Chain_Of_Responsibility/DvdCategory.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Chain_Of_Responsibility/DvdCategory.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Chain_Of_Responsibility/
	$(CP) $(BLIB)/lib/Patterns/Behavioral/Chain_Of_Responsibility/DvdSubSubCategory.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Chain_Of_Responsibility/DvdSubSubCategory.pm6
	$(CP) $(BLIB)/lib/Patterns/Behavioral/Chain_Of_Responsibility/DvdSubSubCategory.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Chain_Of_Responsibility/DvdSubSubCategory.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Chain_Of_Responsibility/
	$(CP) $(BLIB)/lib/Patterns/Behavioral/Chain_Of_Responsibility/TopTitle.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Chain_Of_Responsibility/TopTitle.pm6
	$(CP) $(BLIB)/lib/Patterns/Behavioral/Chain_Of_Responsibility/TopTitle.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Chain_Of_Responsibility/TopTitle.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/
	$(CP) $(BLIB)/lib/Patterns/Behavioral/Mediator.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Mediator.pm6
	$(CP) $(BLIB)/lib/Patterns/Behavioral/Mediator.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Mediator.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/
	$(CP) $(BLIB)/lib/Patterns/Behavioral/Template_Method.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Template_Method.pm6
	$(CP) $(BLIB)/lib/Patterns/Behavioral/Template_Method.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Template_Method.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/
	$(CP) $(BLIB)/lib/Patterns/Behavioral/Observer.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Observer.pm6
	$(CP) $(BLIB)/lib/Patterns/Behavioral/Observer.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Observer.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Command/
	$(CP) $(BLIB)/lib/Patterns/Behavioral/Command/DvdCommandNameStarsOff.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Command/DvdCommandNameStarsOff.pm6
	$(CP) $(BLIB)/lib/Patterns/Behavioral/Command/DvdCommandNameStarsOff.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Command/DvdCommandNameStarsOff.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Command/
	$(CP) $(BLIB)/lib/Patterns/Behavioral/Command/CommandAbstract.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Command/CommandAbstract.pm6
	$(CP) $(BLIB)/lib/Patterns/Behavioral/Command/CommandAbstract.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Command/CommandAbstract.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Command/
	$(CP) $(BLIB)/lib/Patterns/Behavioral/Command/DvdName.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Command/DvdName.pm6
	$(CP) $(BLIB)/lib/Patterns/Behavioral/Command/DvdName.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Command/DvdName.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Command/
	$(CP) $(BLIB)/lib/Patterns/Behavioral/Command/DvdCommandNameStarsOn.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Command/DvdCommandNameStarsOn.pm6
	$(CP) $(BLIB)/lib/Patterns/Behavioral/Command/DvdCommandNameStarsOn.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Command/DvdCommandNameStarsOn.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Memento/
	$(CP) $(BLIB)/lib/Patterns/Behavioral/Memento/DvdMemento.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Memento/DvdMemento.pm6
	$(CP) $(BLIB)/lib/Patterns/Behavioral/Memento/DvdMemento.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Memento/DvdMemento.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Memento/
	$(CP) $(BLIB)/lib/Patterns/Behavioral/Memento/DvdDetails.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Memento/DvdDetails.pm6
	$(CP) $(BLIB)/lib/Patterns/Behavioral/Memento/DvdDetails.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Memento/DvdDetails.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/
	$(CP) $(BLIB)/lib/Patterns/Behavioral/State.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/State.pm6
	$(CP) $(BLIB)/lib/Patterns/Behavioral/State.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/State.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Strategy/
	$(CP) $(BLIB)/lib/Patterns/Behavioral/Strategy/DvdNameTheAtEndStrategy.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Strategy/DvdNameTheAtEndStrategy.pm6
	$(CP) $(BLIB)/lib/Patterns/Behavioral/Strategy/DvdNameTheAtEndStrategy.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Strategy/DvdNameTheAtEndStrategy.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Strategy/
	$(CP) $(BLIB)/lib/Patterns/Behavioral/Strategy/DvdNameAllCapStrategy.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Strategy/DvdNameAllCapStrategy.pm6
	$(CP) $(BLIB)/lib/Patterns/Behavioral/Strategy/DvdNameAllCapStrategy.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Strategy/DvdNameAllCapStrategy.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Strategy/
	$(CP) $(BLIB)/lib/Patterns/Behavioral/Strategy/DvdNameStrategy.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Strategy/DvdNameStrategy.pm6
	$(CP) $(BLIB)/lib/Patterns/Behavioral/Strategy/DvdNameStrategy.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Strategy/DvdNameStrategy.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Strategy/working/
	$(CP) $(BLIB)/lib/Patterns/Behavioral/Strategy/working/DvdNameTheAtEndStrategy.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Strategy/working/DvdNameTheAtEndStrategy.pm6
	$(CP) $(BLIB)/lib/Patterns/Behavioral/Strategy/working/DvdNameTheAtEndStrategy.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Strategy/working/DvdNameTheAtEndStrategy.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Strategy/working/
	$(CP) $(BLIB)/lib/Patterns/Behavioral/Strategy/working/DvdNameAllCapStrategy.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Strategy/working/DvdNameAllCapStrategy.pm6
	$(CP) $(BLIB)/lib/Patterns/Behavioral/Strategy/working/DvdNameAllCapStrategy.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Strategy/working/DvdNameAllCapStrategy.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Strategy/working/
	$(CP) $(BLIB)/lib/Patterns/Behavioral/Strategy/working/DvdNameStrategy.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Strategy/working/DvdNameStrategy.pm6
	$(CP) $(BLIB)/lib/Patterns/Behavioral/Strategy/working/DvdNameStrategy.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Strategy/working/DvdNameStrategy.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Strategy/working/
	$(CP) $(BLIB)/lib/Patterns/Behavioral/Strategy/working/DvdNameContext.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Strategy/working/DvdNameContext.pm6
	$(CP) $(BLIB)/lib/Patterns/Behavioral/Strategy/working/DvdNameContext.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Strategy/working/DvdNameContext.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Strategy/working/
	$(CP) $(BLIB)/lib/Patterns/Behavioral/Strategy/working/DvdNameReplaceSpacesStrategy.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Strategy/working/DvdNameReplaceSpacesStrategy.pm6
	$(CP) $(BLIB)/lib/Patterns/Behavioral/Strategy/working/DvdNameReplaceSpacesStrategy.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Strategy/working/DvdNameReplaceSpacesStrategy.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Strategy/
	$(CP) $(BLIB)/lib/Patterns/Behavioral/Strategy/DvdNameContext.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Strategy/DvdNameContext.pm6
	$(CP) $(BLIB)/lib/Patterns/Behavioral/Strategy/DvdNameContext.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Strategy/DvdNameContext.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Strategy/
	$(CP) $(BLIB)/lib/Patterns/Behavioral/Strategy/DvdNameReplaceSpacesStrategy.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Strategy/DvdNameReplaceSpacesStrategy.pm6
	$(CP) $(BLIB)/lib/Patterns/Behavioral/Strategy/DvdNameReplaceSpacesStrategy.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Strategy/DvdNameReplaceSpacesStrategy.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Iterator/
	$(CP) $(BLIB)/lib/Patterns/Behavioral/Iterator/DvdListIterator.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Iterator/DvdListIterator.pm6
	$(CP) $(BLIB)/lib/Patterns/Behavioral/Iterator/DvdListIterator.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Iterator/DvdListIterator.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Iterator/
	$(CP) $(BLIB)/lib/Patterns/Behavioral/Iterator/DvdList.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Iterator/DvdList.pm6
	$(CP) $(BLIB)/lib/Patterns/Behavioral/Iterator/DvdList.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Behavioral/Iterator/DvdList.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Creational/Singleton/
	$(CP) $(BLIB)/lib/Patterns/Creational/Singleton/SingleSpoon.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Creational/Singleton/SingleSpoon.pm6
	$(CP) $(BLIB)/lib/Patterns/Creational/Singleton/SingleSpoon.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Creational/Singleton/SingleSpoon.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Creational/
	$(CP) $(BLIB)/lib/Patterns/Creational/Builder.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Creational/Builder.pm6
	$(CP) $(BLIB)/lib/Patterns/Creational/Builder.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Creational/Builder.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Creational/
	$(CP) $(BLIB)/lib/Patterns/Creational/Factory_Method.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Creational/Factory_Method.pm6
	$(CP) $(BLIB)/lib/Patterns/Creational/Factory_Method.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Creational/Factory_Method.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Creational/
	$(CP) $(BLIB)/lib/Patterns/Creational/Abstract_Factory.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Creational/Abstract_Factory.pm6
	$(CP) $(BLIB)/lib/Patterns/Creational/Abstract_Factory.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Creational/Abstract_Factory.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Creational/Builder/
	$(CP) $(BLIB)/lib/Patterns/Creational/Builder/BostonSoupBuffetBuilder.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Creational/Builder/BostonSoupBuffetBuilder.pm6
	$(CP) $(BLIB)/lib/Patterns/Creational/Builder/BostonSoupBuffetBuilder.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Creational/Builder/BostonSoupBuffetBuilder.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Creational/Builder/
	$(CP) $(BLIB)/lib/Patterns/Creational/Builder/HonoluluSoupBuffetBuilder.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Creational/Builder/HonoluluSoupBuffetBuilder.pm6
	$(CP) $(BLIB)/lib/Patterns/Creational/Builder/HonoluluSoupBuffetBuilder.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Creational/Builder/HonoluluSoupBuffetBuilder.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Creational/Builder/
	$(CP) $(BLIB)/lib/Patterns/Creational/Builder/SoupBuffetBuilder.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Creational/Builder/SoupBuffetBuilder.pm6
	$(CP) $(BLIB)/lib/Patterns/Creational/Builder/SoupBuffetBuilder.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Creational/Builder/SoupBuffetBuilder.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Creational/
	$(CP) $(BLIB)/lib/Patterns/Creational/Singleton.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Creational/Singleton.pm6
	$(CP) $(BLIB)/lib/Patterns/Creational/Singleton.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Creational/Singleton.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Creational/
	$(CP) $(BLIB)/lib/Patterns/Creational/Prototype.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Creational/Prototype.pm6
	$(CP) $(BLIB)/lib/Patterns/Creational/Prototype.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Creational/Prototype.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Creational/Factory_Method/
	$(CP) $(BLIB)/lib/Patterns/Creational/Factory_Method/HonoluluSoupFactoryMethodSubclass.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Creational/Factory_Method/HonoluluSoupFactoryMethodSubclass.pm6
	$(CP) $(BLIB)/lib/Patterns/Creational/Factory_Method/HonoluluSoupFactoryMethodSubclass.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Creational/Factory_Method/HonoluluSoupFactoryMethodSubclass.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Creational/Factory_Method/
	$(CP) $(BLIB)/lib/Patterns/Creational/Factory_Method/BostonSoupFactoryMethodSubclass.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Creational/Factory_Method/BostonSoupFactoryMethodSubclass.pm6
	$(CP) $(BLIB)/lib/Patterns/Creational/Factory_Method/BostonSoupFactoryMethodSubclass.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Creational/Factory_Method/BostonSoupFactoryMethodSubclass.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Creational/Factory_Method/
	$(CP) $(BLIB)/lib/Patterns/Creational/Factory_Method/SoupFactoryMethod.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Creational/Factory_Method/SoupFactoryMethod.pm6
	$(CP) $(BLIB)/lib/Patterns/Creational/Factory_Method/SoupFactoryMethod.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Creational/Factory_Method/SoupFactoryMethod.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Creational/Abstract_Factory/
	$(CP) $(BLIB)/lib/Patterns/Creational/Abstract_Factory/BostonConcreteSoupFactory.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Creational/Abstract_Factory/BostonConcreteSoupFactory.pm6
	$(CP) $(BLIB)/lib/Patterns/Creational/Abstract_Factory/BostonConcreteSoupFactory.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Creational/Abstract_Factory/BostonConcreteSoupFactory.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Creational/Abstract_Factory/
	$(CP) $(BLIB)/lib/Patterns/Creational/Abstract_Factory/HonoluluConcreteSoupFactory.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Creational/Abstract_Factory/HonoluluConcreteSoupFactory.pm6
	$(CP) $(BLIB)/lib/Patterns/Creational/Abstract_Factory/HonoluluConcreteSoupFactory.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Creational/Abstract_Factory/HonoluluConcreteSoupFactory.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Creational/Abstract_Factory/
	$(CP) $(BLIB)/lib/Patterns/Creational/Abstract_Factory/AbstractSoupFactory.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Creational/Abstract_Factory/AbstractSoupFactory.pm6
	$(CP) $(BLIB)/lib/Patterns/Creational/Abstract_Factory/AbstractSoupFactory.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Creational/Abstract_Factory/AbstractSoupFactory.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Creational/Prototype/
	$(CP) $(BLIB)/lib/Patterns/Creational/Prototype/AbstractSpoon.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Creational/Prototype/AbstractSpoon.pm6
	$(CP) $(BLIB)/lib/Patterns/Creational/Prototype/AbstractSpoon.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Creational/Prototype/AbstractSpoon.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Creational/Prototype/
	$(CP) $(BLIB)/lib/Patterns/Creational/Prototype/SoupSpoon.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Creational/Prototype/SoupSpoon.pm6
	$(CP) $(BLIB)/lib/Patterns/Creational/Prototype/SoupSpoon.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Creational/Prototype/SoupSpoon.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Creational/Prototype/
	$(CP) $(BLIB)/lib/Patterns/Creational/Prototype/SaladSpoon.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Creational/Prototype/SaladSpoon.pm6
	$(CP) $(BLIB)/lib/Patterns/Creational/Prototype/SaladSpoon.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Creational/Prototype/SaladSpoon.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Creational/Prototype/
	$(CP) $(BLIB)/lib/Patterns/Creational/Prototype/SaladFork.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Creational/Prototype/SaladFork.pm6
	$(CP) $(BLIB)/lib/Patterns/Creational/Prototype/SaladFork.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Creational/Prototype/SaladFork.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Creational/Prototype/
	$(CP) $(BLIB)/lib/Patterns/Creational/Prototype/AbstractFork.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Creational/Prototype/AbstractFork.pm6
	$(CP) $(BLIB)/lib/Patterns/Creational/Prototype/AbstractFork.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Creational/Prototype/AbstractFork.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Creational/Prototype/
	$(CP) $(BLIB)/lib/Patterns/Creational/Prototype/Cloneable.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Creational/Prototype/Cloneable.pm6
	$(CP) $(BLIB)/lib/Patterns/Creational/Prototype/Cloneable.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Creational/Prototype/Cloneable.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Creational/Prototype/
	$(CP) $(BLIB)/lib/Patterns/Creational/Prototype/PrototypeFactory.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Creational/Prototype/PrototypeFactory.pm6
	$(CP) $(BLIB)/lib/Patterns/Creational/Prototype/PrototypeFactory.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Creational/Prototype/PrototypeFactory.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Structural/
	$(CP) $(BLIB)/lib/Patterns/Structural/Decorator.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Structural/Decorator.pm6
	$(CP) $(BLIB)/lib/Patterns/Structural/Decorator.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Structural/Decorator.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Structural/
	$(CP) $(BLIB)/lib/Patterns/Structural/Adapter.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Structural/Adapter.pm6
	$(CP) $(BLIB)/lib/Patterns/Structural/Adapter.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Structural/Adapter.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Structural/
	$(CP) $(BLIB)/lib/Patterns/Structural/Facade.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Structural/Facade.pm6
	$(CP) $(BLIB)/lib/Patterns/Structural/Facade.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Structural/Facade.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Structural/
	$(CP) $(BLIB)/lib/Patterns/Structural/Proxy.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Structural/Proxy.pm6
	$(CP) $(BLIB)/lib/Patterns/Structural/Proxy.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Structural/Proxy.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Structural/Flyweight/
	$(CP) $(BLIB)/lib/Patterns/Structural/Flyweight/TeaFlavorFactory.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Structural/Flyweight/TeaFlavorFactory.pm6
	$(CP) $(BLIB)/lib/Patterns/Structural/Flyweight/TeaFlavorFactory.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Structural/Flyweight/TeaFlavorFactory.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Structural/Flyweight/
	$(CP) $(BLIB)/lib/Patterns/Structural/Flyweight/TeaOrder.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Structural/Flyweight/TeaOrder.pm6
	$(CP) $(BLIB)/lib/Patterns/Structural/Flyweight/TeaOrder.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Structural/Flyweight/TeaOrder.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Structural/Flyweight/
	$(CP) $(BLIB)/lib/Patterns/Structural/Flyweight/TeaOrderContext.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Structural/Flyweight/TeaOrderContext.pm6
	$(CP) $(BLIB)/lib/Patterns/Structural/Flyweight/TeaOrderContext.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Structural/Flyweight/TeaOrderContext.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Structural/Flyweight/
	$(CP) $(BLIB)/lib/Patterns/Structural/Flyweight/TeaFlavor.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Structural/Flyweight/TeaFlavor.pm6
	$(CP) $(BLIB)/lib/Patterns/Structural/Flyweight/TeaFlavor.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Structural/Flyweight/TeaFlavor.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Structural/Facade/
	$(CP) $(BLIB)/lib/Patterns/Structural/Facade/FacadeTeaBag.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Structural/Facade/FacadeTeaBag.pm6
	$(CP) $(BLIB)/lib/Patterns/Structural/Facade/FacadeTeaBag.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Structural/Facade/FacadeTeaBag.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Structural/Facade/
	$(CP) $(BLIB)/lib/Patterns/Structural/Facade/FacadeTeaCup.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Structural/Facade/FacadeTeaCup.pm6
	$(CP) $(BLIB)/lib/Patterns/Structural/Facade/FacadeTeaCup.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Structural/Facade/FacadeTeaCup.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Structural/Facade/
	$(CP) $(BLIB)/lib/Patterns/Structural/Facade/FacadeCuppaMaker.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Structural/Facade/FacadeCuppaMaker.pm6
	$(CP) $(BLIB)/lib/Patterns/Structural/Facade/FacadeCuppaMaker.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Structural/Facade/FacadeCuppaMaker.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Structural/Facade/
	$(CP) $(BLIB)/lib/Patterns/Structural/Facade/FacadeWater.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Structural/Facade/FacadeWater.pm6
	$(CP) $(BLIB)/lib/Patterns/Structural/Facade/FacadeWater.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Structural/Facade/FacadeWater.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Structural/
	$(CP) $(BLIB)/lib/Patterns/Structural/Flyweight.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Structural/Flyweight.pm6
	$(CP) $(BLIB)/lib/Patterns/Structural/Flyweight.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Structural/Flyweight.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Structural/Proxy/
	$(CP) $(BLIB)/lib/Patterns/Structural/Proxy/PotOfTea.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Structural/Proxy/PotOfTea.pm6
	$(CP) $(BLIB)/lib/Patterns/Structural/Proxy/PotOfTea.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Structural/Proxy/PotOfTea.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Structural/Proxy/
	$(CP) $(BLIB)/lib/Patterns/Structural/Proxy/PotOfTeaInterface.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Structural/Proxy/PotOfTeaInterface.pm6
	$(CP) $(BLIB)/lib/Patterns/Structural/Proxy/PotOfTeaInterface.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Structural/Proxy/PotOfTeaInterface.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Structural/Proxy/
	$(CP) $(BLIB)/lib/Patterns/Structural/Proxy/PotOfTeaProxy.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Structural/Proxy/PotOfTeaProxy.pm6
	$(CP) $(BLIB)/lib/Patterns/Structural/Proxy/PotOfTeaProxy.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Structural/Proxy/PotOfTeaProxy.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Structural/Composite/
	$(CP) $(BLIB)/lib/Patterns/Structural/Composite/TinOfTeaBags.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Structural/Composite/TinOfTeaBags.pm6
	$(CP) $(BLIB)/lib/Patterns/Structural/Composite/TinOfTeaBags.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Structural/Composite/TinOfTeaBags.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Structural/Composite/
	$(CP) $(BLIB)/lib/Patterns/Structural/Composite/OneTeaBag.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Structural/Composite/OneTeaBag.pm6
	$(CP) $(BLIB)/lib/Patterns/Structural/Composite/OneTeaBag.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Structural/Composite/OneTeaBag.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Structural/Composite/
	$(CP) $(BLIB)/lib/Patterns/Structural/Composite/TeaBags.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Structural/Composite/TeaBags.pm6
	$(CP) $(BLIB)/lib/Patterns/Structural/Composite/TeaBags.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Structural/Composite/TeaBags.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Structural/Adapter/
	$(CP) $(BLIB)/lib/Patterns/Structural/Adapter/TeaCup.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Structural/Adapter/TeaCup.pm6
	$(CP) $(BLIB)/lib/Patterns/Structural/Adapter/TeaCup.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Structural/Adapter/TeaCup.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Structural/Adapter/
	$(CP) $(BLIB)/lib/Patterns/Structural/Adapter/LooseLeafTea.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Structural/Adapter/LooseLeafTea.pm6
	$(CP) $(BLIB)/lib/Patterns/Structural/Adapter/LooseLeafTea.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Structural/Adapter/LooseLeafTea.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Structural/Adapter/
	$(CP) $(BLIB)/lib/Patterns/Structural/Adapter/TeaBall.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Structural/Adapter/TeaBall.pm6
	$(CP) $(BLIB)/lib/Patterns/Structural/Adapter/TeaBall.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Structural/Adapter/TeaBall.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Structural/Adapter/
	$(CP) $(BLIB)/lib/Patterns/Structural/Adapter/TeaBag.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Structural/Adapter/TeaBag.pm6
	$(CP) $(BLIB)/lib/Patterns/Structural/Adapter/TeaBag.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Structural/Adapter/TeaBag.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Structural/Decorator/
	$(CP) $(BLIB)/lib/Patterns/Structural/Decorator/Tea.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Structural/Decorator/Tea.pm6
	$(CP) $(BLIB)/lib/Patterns/Structural/Decorator/Tea.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Structural/Decorator/Tea.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Structural/Decorator/
	$(CP) $(BLIB)/lib/Patterns/Structural/Decorator/ChaiDecorator.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Structural/Decorator/ChaiDecorator.pm6
	$(CP) $(BLIB)/lib/Patterns/Structural/Decorator/ChaiDecorator.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Structural/Decorator/ChaiDecorator.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Structural/Decorator/
	$(CP) $(BLIB)/lib/Patterns/Structural/Decorator/TeaLeaves.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Structural/Decorator/TeaLeaves.pm6
	$(CP) $(BLIB)/lib/Patterns/Structural/Decorator/TeaLeaves.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Structural/Decorator/TeaLeaves.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Structural/Bridge/
	$(CP) $(BLIB)/lib/Patterns/Structural/Bridge/SodaImpSingleton.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Structural/Bridge/SodaImpSingleton.pm6
	$(CP) $(BLIB)/lib/Patterns/Structural/Bridge/SodaImpSingleton.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Structural/Bridge/SodaImpSingleton.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Structural/Bridge/
	$(CP) $(BLIB)/lib/Patterns/Structural/Bridge/SuperSizeSoda.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Structural/Bridge/SuperSizeSoda.pm6
	$(CP) $(BLIB)/lib/Patterns/Structural/Bridge/SuperSizeSoda.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Structural/Bridge/SuperSizeSoda.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Structural/Bridge/
	$(CP) $(BLIB)/lib/Patterns/Structural/Bridge/GrapeSodaImp.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Structural/Bridge/GrapeSodaImp.pm6
	$(CP) $(BLIB)/lib/Patterns/Structural/Bridge/GrapeSodaImp.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Structural/Bridge/GrapeSodaImp.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Structural/Bridge/
	$(CP) $(BLIB)/lib/Patterns/Structural/Bridge/MediumSoda.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Structural/Bridge/MediumSoda.pm6
	$(CP) $(BLIB)/lib/Patterns/Structural/Bridge/MediumSoda.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Structural/Bridge/MediumSoda.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Structural/Bridge/
	$(CP) $(BLIB)/lib/Patterns/Structural/Bridge/SodaImp.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Structural/Bridge/SodaImp.pm6
	$(CP) $(BLIB)/lib/Patterns/Structural/Bridge/SodaImp.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Structural/Bridge/SodaImp.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Structural/Bridge/
	$(CP) $(BLIB)/lib/Patterns/Structural/Bridge/CherrySodaImp.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Structural/Bridge/CherrySodaImp.pm6
	$(CP) $(BLIB)/lib/Patterns/Structural/Bridge/CherrySodaImp.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Structural/Bridge/CherrySodaImp.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Structural/Bridge/
	$(CP) $(BLIB)/lib/Patterns/Structural/Bridge/OrangeSodaImp.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Structural/Bridge/OrangeSodaImp.pm6
	$(CP) $(BLIB)/lib/Patterns/Structural/Bridge/OrangeSodaImp.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Structural/Bridge/OrangeSodaImp.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Structural/Bridge/
	$(CP) $(BLIB)/lib/Patterns/Structural/Bridge/Soda.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Structural/Bridge/Soda.pm6
	$(CP) $(BLIB)/lib/Patterns/Structural/Bridge/Soda.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Structural/Bridge/Soda.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Structural/
	$(CP) $(BLIB)/lib/Patterns/Structural/Composite.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Structural/Composite.pm6
	$(CP) $(BLIB)/lib/Patterns/Structural/Composite.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Structural/Composite.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/Structural/
	$(CP) $(BLIB)/lib/Patterns/Structural/Bridge.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/Structural/Bridge.pm6
	$(CP) $(BLIB)/lib/Patterns/Structural/Bridge.pir $(DESTDIR)$(PREFIX)/lib/Patterns/Structural/Bridge.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/common/
	$(CP) $(BLIB)/lib/Patterns/common/Minnestrone.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/common/Minnestrone.pm6
	$(CP) $(BLIB)/lib/Patterns/common/Minnestrone.pir $(DESTDIR)$(PREFIX)/lib/Patterns/common/Minnestrone.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/common/
	$(CP) $(BLIB)/lib/Patterns/common/BostonFishChowder.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/common/BostonFishChowder.pm6
	$(CP) $(BLIB)/lib/Patterns/common/BostonFishChowder.pir $(DESTDIR)$(PREFIX)/lib/Patterns/common/BostonFishChowder.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/common/
	$(CP) $(BLIB)/lib/Patterns/common/HonoluluClamChowder.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/common/HonoluluClamChowder.pm6
	$(CP) $(BLIB)/lib/Patterns/common/HonoluluClamChowder.pir $(DESTDIR)$(PREFIX)/lib/Patterns/common/HonoluluClamChowder.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/common/
	$(CP) $(BLIB)/lib/Patterns/common/TofuSoup.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/common/TofuSoup.pm6
	$(CP) $(BLIB)/lib/Patterns/common/TofuSoup.pir $(DESTDIR)$(PREFIX)/lib/Patterns/common/TofuSoup.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/common/
	$(CP) $(BLIB)/lib/Patterns/common/SoupBuffet.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/common/SoupBuffet.pm6
	$(CP) $(BLIB)/lib/Patterns/common/SoupBuffet.pir $(DESTDIR)$(PREFIX)/lib/Patterns/common/SoupBuffet.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/common/
	$(CP) $(BLIB)/lib/Patterns/common/Soup.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/common/Soup.pm6
	$(CP) $(BLIB)/lib/Patterns/common/Soup.pir $(DESTDIR)$(PREFIX)/lib/Patterns/common/Soup.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/common/
	$(CP) $(BLIB)/lib/Patterns/common/PastaFazul.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/common/PastaFazul.pm6
	$(CP) $(BLIB)/lib/Patterns/common/PastaFazul.pir $(DESTDIR)$(PREFIX)/lib/Patterns/common/PastaFazul.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/common/
	$(CP) $(BLIB)/lib/Patterns/common/ChickenSoup.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/common/ChickenSoup.pm6
	$(CP) $(BLIB)/lib/Patterns/common/ChickenSoup.pir $(DESTDIR)$(PREFIX)/lib/Patterns/common/ChickenSoup.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/common/
	$(CP) $(BLIB)/lib/Patterns/common/ClamChowder.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/common/ClamChowder.pm6
	$(CP) $(BLIB)/lib/Patterns/common/ClamChowder.pir $(DESTDIR)$(PREFIX)/lib/Patterns/common/ClamChowder.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/common/
	$(CP) $(BLIB)/lib/Patterns/common/FishChowder.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/common/FishChowder.pm6
	$(CP) $(BLIB)/lib/Patterns/common/FishChowder.pir $(DESTDIR)$(PREFIX)/lib/Patterns/common/FishChowder.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/common/
	$(CP) $(BLIB)/lib/Patterns/common/HonoluluFishChowder.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/common/HonoluluFishChowder.pm6
	$(CP) $(BLIB)/lib/Patterns/common/HonoluluFishChowder.pir $(DESTDIR)$(PREFIX)/lib/Patterns/common/HonoluluFishChowder.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/common/
	$(CP) $(BLIB)/lib/Patterns/common/VegetableSoup.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/common/VegetableSoup.pm6
	$(CP) $(BLIB)/lib/Patterns/common/VegetableSoup.pir $(DESTDIR)$(PREFIX)/lib/Patterns/common/VegetableSoup.pir
	$(MKDIR) $(DESTDIR)$(PREFIX)/lib/Patterns/common/
	$(CP) $(BLIB)/lib/Patterns/common/BostonClamChowder.pm6 $(DESTDIR)$(PREFIX)/lib/Patterns/common/BostonClamChowder.pm6
	$(CP) $(BLIB)/lib/Patterns/common/BostonClamChowder.pir $(DESTDIR)$(PREFIX)/lib/Patterns/common/BostonClamChowder.pir


clean:
	rm -fr $(BLIB)

distclean purge: clean
	rm -r Makefile
