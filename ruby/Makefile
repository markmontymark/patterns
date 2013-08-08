.PHONY: all build test install clean distclean purge

RUBY  = ruby
DESTDIR= 
BLIB   = blib
RLIB  = $(PWD)/$(BLIB)/lib:$(PWD)/lib:$(RUBYLIB)
CP     = cp -p
MKDIR  = mkdir -p


BLIB_PIRS = $(BLIB)/common/Soup.rb $(BLIB)/common/Minnestrone.rb $(BLIB)/common/VegetableSoup.rb $(BLIB)/common/TofuSoup.rb $(BLIB)/common/PastaFazul.rb $(BLIB)/common/ChickenSoup.rb $(BLIB)/common/ClamChowder.rb $(BLIB)/common/FishChowder.rb $(BLIB)/common/BostonFishChowder.rb $(BLIB)/common/HonoluluClamChowder.rb $(BLIB)/common/HonoluluFishChowder.rb $(BLIB)/common/BostonClamChowder.rb $(BLIB)/common/SoupBuffet.rb $(BLIB)/Behavioral/Interpreter.rb $(BLIB)/Behavioral/Visitor.rb $(BLIB)/Behavioral/Interpreter/DvdTitleActorExpression.rb $(BLIB)/Behavioral/Interpreter/DvdActorExpression.rb $(BLIB)/Behavioral/Interpreter/DvdInterpreterClient.rb $(BLIB)/Behavioral/Interpreter/DvdActorTitleExpression.rb $(BLIB)/Behavioral/Interpreter/DvdAbstractExpression.rb $(BLIB)/Behavioral/Interpreter/TitleAndActor.rb $(BLIB)/Behavioral/Interpreter/DvdInterpreterContext.rb $(BLIB)/Behavioral/Interpreter/DvdTitleExpression.rb $(BLIB)/Behavioral/Iterator.rb $(BLIB)/Behavioral/Memento.rb $(BLIB)/Behavioral/Chain_Of_Responsibility.rb $(BLIB)/Behavioral/Observer/DvdRelease.rb $(BLIB)/Behavioral/Observer/DvdSubscriber.rb $(BLIB)/Behavioral/Observer/DvdReleaseByCategory.rb $(BLIB)/Behavioral/Observer.rb $(BLIB)/Behavioral/State/DvdStateName.rb $(BLIB)/Behavioral/State/DvdStateNameStars.rb $(BLIB)/Behavioral/State/DvdStateNameExclaim.rb $(BLIB)/Behavioral/State/DvdStateContext.rb $(BLIB)/Behavioral/State.rb $(BLIB)/Behavioral/Command/CommandAbstract.rb $(BLIB)/Behavioral/Command/DvdName.rb $(BLIB)/Behavioral/Command/DvdCommandNameStarsOff.rb $(BLIB)/Behavioral/Command/DvdCommandNameStarsOn.rb $(BLIB)/Behavioral/Command.rb $(BLIB)/Behavioral/Template_Method.rb $(BLIB)/Behavioral/Template_Method/TitleInfo.rb $(BLIB)/Behavioral/Template_Method/DvdTitleInfo.rb $(BLIB)/Behavioral/Template_Method/GameTitleInfo.rb $(BLIB)/Behavioral/Template_Method/BookTitleInfo.rb $(BLIB)/Behavioral/Visitor/AbstractTitleInfo.rb $(BLIB)/Behavioral/Visitor/TitleBlurbVisitor.rb $(BLIB)/Behavioral/Visitor/DvdInfo.rb $(BLIB)/Behavioral/Visitor/BookInfo.rb $(BLIB)/Behavioral/Visitor/TitleShortBlurbVisitor.rb $(BLIB)/Behavioral/Visitor/TitleLongBlurbVisitor.rb $(BLIB)/Behavioral/Visitor/GameInfo.rb $(BLIB)/Behavioral/Mediator/DvdTitle.rb $(BLIB)/Behavioral/Mediator/DvdLowercaseTitle.rb $(BLIB)/Behavioral/Mediator/DvdUppercaseTitle.rb $(BLIB)/Behavioral/Mediator/DvdMediator.rb $(BLIB)/Behavioral/Mediator.rb $(BLIB)/Behavioral/Chain_Of_Responsibility/DvdSubCategory.rb $(BLIB)/Behavioral/Chain_Of_Responsibility/DvdCategory.rb $(BLIB)/Behavioral/Chain_Of_Responsibility/DvdSubSubCategory.rb $(BLIB)/Behavioral/Chain_Of_Responsibility/TopTitle.rb $(BLIB)/Behavioral/Memento/DvdMemento.rb $(BLIB)/Behavioral/Memento/DvdDetails.rb $(BLIB)/Behavioral/Strategy/DvdNameStrategy.rb $(BLIB)/Behavioral/Strategy/DvdNameTheAtEndStrategy.rb $(BLIB)/Behavioral/Strategy/DvdNameAllCapStrategy.rb $(BLIB)/Behavioral/Strategy/DvdNameReplaceSpacesStrategy.rb $(BLIB)/Behavioral/Strategy/DvdNameContext.rb $(BLIB)/Behavioral/Strategy.rb $(BLIB)/Behavioral/Iterator/DvdListIterator.rb $(BLIB)/Behavioral/Iterator/DvdList.rb $(BLIB)/Creational/Singleton/SingleSpoon.rb $(BLIB)/Creational/Singleton.rb $(BLIB)/Creational/Builder/SoupBuffetBuilder.rb $(BLIB)/Creational/Builder/BostonSoupBuffetBuilder.rb $(BLIB)/Creational/Builder/HonoluluSoupBuffetBuilder.rb $(BLIB)/Creational/Builder.rb $(BLIB)/Creational/Factory_Method.rb $(BLIB)/Creational/Factory_Method/HonoluluSoupFactoryMethodSubclass.rb $(BLIB)/Creational/Factory_Method/BostonSoupFactoryMethodSubclass.rb $(BLIB)/Creational/Factory_Method/SoupFactoryMethod.rb $(BLIB)/Creational/Abstract_Factory/AbstractSoupFactory.rb $(BLIB)/Creational/Abstract_Factory/BostonConcreteSoupFactory.rb $(BLIB)/Creational/Abstract_Factory/HonoluluConcreteSoupFactory.rb $(BLIB)/Creational/Abstract_Factory.rb $(BLIB)/Creational/Prototype/AbstractSpoon.rb $(BLIB)/Creational/Prototype/AbstractFork.rb $(BLIB)/Creational/Prototype/SoupSpoon.rb $(BLIB)/Creational/Prototype/SaladSpoon.rb $(BLIB)/Creational/Prototype/SaladFork.rb $(BLIB)/Creational/Prototype/PrototypeFactory.rb $(BLIB)/Creational/Prototype.rb $(BLIB)/Structural/Decorator.rb $(BLIB)/Structural/Adapter.rb $(BLIB)/Structural/Bridge.rb $(BLIB)/Structural/Facade.rb $(BLIB)/Structural/Proxy.rb $(BLIB)/Structural/Flyweight.rb $(BLIB)/Structural/Flyweight/TeaFlavorFactory.rb $(BLIB)/Structural/Flyweight/TeaOrder.rb $(BLIB)/Structural/Flyweight/TeaOrderContext.rb $(BLIB)/Structural/Flyweight/TeaFlavor.rb $(BLIB)/Structural/Facade/FacadeTeaBag.rb $(BLIB)/Structural/Facade/FacadeTeaCup.rb $(BLIB)/Structural/Facade/FacadeCuppaMaker.rb $(BLIB)/Structural/Facade/FacadeWater.rb $(BLIB)/Structural/Proxy/PotOfTea.rb $(BLIB)/Structural/Proxy/PotOfTeaInterface.rb $(BLIB)/Structural/Proxy/PotOfTeaProxy.rb $(BLIB)/Structural/Composite.rb $(BLIB)/Structural/Composite/TinOfTeaBags.rb $(BLIB)/Structural/Composite/OneTeaBag.rb $(BLIB)/Structural/Composite/TeaBags.rb $(BLIB)/Structural/Adapter/LooseLeafTea.rb $(BLIB)/Structural/Adapter/TeaCup.rb $(BLIB)/Structural/Adapter/TeaBall.rb $(BLIB)/Structural/Adapter/TeaBag.rb $(BLIB)/Structural/Decorator/Tea.rb $(BLIB)/Structural/Decorator/ChaiDecorator.rb $(BLIB)/Structural/Decorator/TeaLeaves.rb $(BLIB)/Structural/Bridge/SodaImpSingleton.rb $(BLIB)/Structural/Bridge/SuperSizeSoda.rb $(BLIB)/Structural/Bridge/GrapeSodaImp.rb $(BLIB)/Structural/Bridge/MediumSoda.rb $(BLIB)/Structural/Bridge/SodaImp.rb $(BLIB)/Structural/Bridge/CherrySodaImp.rb $(BLIB)/Structural/Bridge/OrangeSodaImp.rb $(BLIB)/Structural/Bridge/Soda.rb $(BLIB)/Structural/Composite.rb

all build: $(BLIB_PIRS)

$(BLIB)/Behavioral/Interpreter.rb : src/Behavioral/Interpreter.rb $(BLIB)/Behavioral/Interpreter/TitleAndActor.rb $(BLIB)/Behavioral/Interpreter/DvdInterpreterContext.rb $(BLIB)/Behavioral/Interpreter/DvdAbstractExpression.rb $(BLIB)/Behavioral/Interpreter/DvdActorExpression.rb $(BLIB)/Behavioral/Interpreter/DvdTitleActorExpression.rb $(BLIB)/Behavioral/Interpreter/DvdActorTitleExpression.rb $(BLIB)/Behavioral/Interpreter/DvdTitleExpression.rb $(BLIB)/Behavioral/Interpreter/DvdInterpreterClient.rb
	$(MKDIR) $(BLIB)/Behavioral/
	$(CP) src/Behavioral/Interpreter.rb $(BLIB)/Behavioral/Interpreter.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw Behavioral/Interpreter.rb

$(BLIB)/Behavioral/Visitor.rb : src/Behavioral/Visitor.rb $(BLIB)/Behavioral/Visitor/TitleBlurbVisitor.rb $(BLIB)/Behavioral/Visitor/AbstractTitleInfo.rb $(BLIB)/Behavioral/Visitor/DvdInfo.rb $(BLIB)/Behavioral/Visitor/BookInfo.rb $(BLIB)/Behavioral/Visitor/GameInfo.rb $(BLIB)/Behavioral/Visitor/TitleLongBlurbVisitor.rb $(BLIB)/Behavioral/Visitor/TitleShortBlurbVisitor.rb 
	$(MKDIR) $(BLIB)/Behavioral/
	$(CP) src/Behavioral/Visitor.rb $(BLIB)/Behavioral/Visitor.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw Behavioral/Visitor.rb

$(BLIB)/Behavioral/Interpreter/DvdTitleActorExpression.rb : src/Behavioral/Interpreter/DvdTitleActorExpression.rb
	$(MKDIR) $(BLIB)/Behavioral/Interpreter/
	$(CP) src/Behavioral/Interpreter/DvdTitleActorExpression.rb $(BLIB)/Behavioral/Interpreter/DvdTitleActorExpression.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw Behavioral/Interpreter/DvdTitleActorExpression.rb

$(BLIB)/Behavioral/Interpreter/DvdActorExpression.rb : src/Behavioral/Interpreter/DvdActorExpression.rb
	$(MKDIR) $(BLIB)/Behavioral/Interpreter/
	$(CP) src/Behavioral/Interpreter/DvdActorExpression.rb $(BLIB)/Behavioral/Interpreter/DvdActorExpression.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw Behavioral/Interpreter/DvdActorExpression.rb

$(BLIB)/Behavioral/Interpreter/DvdInterpreterClient.rb : src/Behavioral/Interpreter/DvdInterpreterClient.rb
	$(MKDIR) $(BLIB)/Behavioral/Interpreter/
	$(CP) src/Behavioral/Interpreter/DvdInterpreterClient.rb $(BLIB)/Behavioral/Interpreter/DvdInterpreterClient.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw Behavioral/Interpreter/DvdInterpreterClient.rb

$(BLIB)/Behavioral/Interpreter/DvdActorTitleExpression.rb : src/Behavioral/Interpreter/DvdActorTitleExpression.rb
	$(MKDIR) $(BLIB)/Behavioral/Interpreter/
	$(CP) src/Behavioral/Interpreter/DvdActorTitleExpression.rb $(BLIB)/Behavioral/Interpreter/DvdActorTitleExpression.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw Behavioral/Interpreter/DvdActorTitleExpression.rb

$(BLIB)/Behavioral/Interpreter/DvdAbstractExpression.rb : src/Behavioral/Interpreter/DvdAbstractExpression.rb
	$(MKDIR) $(BLIB)/Behavioral/Interpreter/
	$(CP) src/Behavioral/Interpreter/DvdAbstractExpression.rb $(BLIB)/Behavioral/Interpreter/DvdAbstractExpression.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw Behavioral/Interpreter/DvdAbstractExpression.rb

$(BLIB)/Behavioral/Interpreter/TitleAndActor.rb : src/Behavioral/Interpreter/TitleAndActor.rb
	$(MKDIR) $(BLIB)/Behavioral/Interpreter/
	$(CP) src/Behavioral/Interpreter/TitleAndActor.rb $(BLIB)/Behavioral/Interpreter/TitleAndActor.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw Behavioral/Interpreter/TitleAndActor.rb

$(BLIB)/Behavioral/Interpreter/DvdInterpreterContext.rb : src/Behavioral/Interpreter/DvdInterpreterContext.rb
	$(MKDIR) $(BLIB)/Behavioral/Interpreter/
	$(CP) src/Behavioral/Interpreter/DvdInterpreterContext.rb $(BLIB)/Behavioral/Interpreter/DvdInterpreterContext.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw Behavioral/Interpreter/DvdInterpreterContext.rb

$(BLIB)/Behavioral/Interpreter/DvdTitleExpression.rb : src/Behavioral/Interpreter/DvdTitleExpression.rb
	$(MKDIR) $(BLIB)/Behavioral/Interpreter/
	$(CP) src/Behavioral/Interpreter/DvdTitleExpression.rb $(BLIB)/Behavioral/Interpreter/DvdTitleExpression.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw Behavioral/Interpreter/DvdTitleExpression.rb

$(BLIB)/Behavioral/Iterator.rb : src/Behavioral/Iterator.rb $(BLIB)/Behavioral/Iterator/DvdList.rb $(BLIB)/Behavioral/Iterator/DvdListIterator.rb 
	$(MKDIR) $(BLIB)/Behavioral/
	$(CP) src/Behavioral/Iterator.rb $(BLIB)/Behavioral/Iterator.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw Behavioral/Iterator.rb

$(BLIB)/Behavioral/Memento.rb : src/Behavioral/Memento.rb $(BLIB)/Behavioral/Memento/DvdMemento.rb $(BLIB)/Behavioral/Memento/DvdDetails.rb 
	$(MKDIR) $(BLIB)/Behavioral/
	$(CP) src/Behavioral/Memento.rb $(BLIB)/Behavioral/Memento.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw Behavioral/Memento.rb

$(BLIB)/Behavioral/Chain_Of_Responsibility.rb : src/Behavioral/Chain_Of_Responsibility.rb $(BLIB)/Behavioral/Chain_Of_Responsibility/TopTitle.rb $(BLIB)/Behavioral/Chain_Of_Responsibility/DvdCategory.rb $(BLIB)/Behavioral/Chain_Of_Responsibility/DvdSubCategory.rb $(BLIB)/Behavioral/Chain_Of_Responsibility/DvdSubSubCategory.rb
	$(MKDIR) $(BLIB)/Behavioral/
	$(CP) src/Behavioral/Chain_Of_Responsibility.rb $(BLIB)/Behavioral/Chain_Of_Responsibility.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw Behavioral/Chain_Of_Responsibility.rb

$(BLIB)/Behavioral/Observer/DvdRelease.rb : src/Behavioral/Observer/DvdRelease.rb
	$(MKDIR) $(BLIB)/Behavioral/Observer/
	$(CP) src/Behavioral/Observer/DvdRelease.rb $(BLIB)/Behavioral/Observer/DvdRelease.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw Behavioral/Observer/DvdRelease.rb

$(BLIB)/Behavioral/Observer/DvdSubscriber.rb : src/Behavioral/Observer/DvdSubscriber.rb
	$(MKDIR) $(BLIB)/Behavioral/Observer/
	$(CP) src/Behavioral/Observer/DvdSubscriber.rb $(BLIB)/Behavioral/Observer/DvdSubscriber.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw Behavioral/Observer/DvdSubscriber.rb

$(BLIB)/Behavioral/Observer/DvdReleaseByCategory.rb : src/Behavioral/Observer/DvdReleaseByCategory.rb
	$(MKDIR) $(BLIB)/Behavioral/Observer/
	$(CP) src/Behavioral/Observer/DvdReleaseByCategory.rb $(BLIB)/Behavioral/Observer/DvdReleaseByCategory.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw Behavioral/Observer/DvdReleaseByCategory.rb

$(BLIB)/Behavioral/State/DvdStateNameStars.rb : src/Behavioral/State/DvdStateNameStars.rb
	$(MKDIR) $(BLIB)/Behavioral/State/
	$(CP) src/Behavioral/State/DvdStateNameStars.rb $(BLIB)/Behavioral/State/DvdStateNameStars.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw Behavioral/State/DvdStateNameStars.rb

$(BLIB)/Behavioral/State/DvdStateName.rb : src/Behavioral/State/DvdStateName.rb
	$(MKDIR) $(BLIB)/Behavioral/State/
	$(CP) src/Behavioral/State/DvdStateName.rb $(BLIB)/Behavioral/State/DvdStateName.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw Behavioral/State/DvdStateName.rb

$(BLIB)/Behavioral/State/DvdStateContext.rb : src/Behavioral/State/DvdStateContext.rb
	$(MKDIR) $(BLIB)/Behavioral/State/
	$(CP) src/Behavioral/State/DvdStateContext.rb $(BLIB)/Behavioral/State/DvdStateContext.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw Behavioral/State/DvdStateContext.rb

$(BLIB)/Behavioral/State/DvdStateNameExclaim.rb : src/Behavioral/State/DvdStateNameExclaim.rb
	$(MKDIR) $(BLIB)/Behavioral/State/
	$(CP) src/Behavioral/State/DvdStateNameExclaim.rb $(BLIB)/Behavioral/State/DvdStateNameExclaim.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw Behavioral/State/DvdStateNameExclaim.rb

$(BLIB)/Behavioral/Command.rb : src/Behavioral/Command.rb $(BLIB)/Behavioral/Command/CommandAbstract.rb $(BLIB)/Behavioral/Command/DvdCommandNameStarsOff.rb $(BLIB)/Behavioral/Command/DvdCommandNameStarsOn.rb $(BLIB)/Behavioral/Command/DvdName.rb
	$(MKDIR) $(BLIB)/Behavioral/
	$(CP) src/Behavioral/Command.rb $(BLIB)/Behavioral/Command.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw Behavioral/Command.rb

$(BLIB)/Behavioral/Template_Method/DvdTitleInfo.rb : src/Behavioral/Template_Method/DvdTitleInfo.rb
	$(MKDIR) $(BLIB)/Behavioral/Template_Method/
	$(CP) src/Behavioral/Template_Method/DvdTitleInfo.rb $(BLIB)/Behavioral/Template_Method/DvdTitleInfo.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw Behavioral/Template_Method/DvdTitleInfo.rb

$(BLIB)/Behavioral/Template_Method/GameTitleInfo.rb : src/Behavioral/Template_Method/GameTitleInfo.rb
	$(MKDIR) $(BLIB)/Behavioral/Template_Method/
	$(CP) src/Behavioral/Template_Method/GameTitleInfo.rb $(BLIB)/Behavioral/Template_Method/GameTitleInfo.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw Behavioral/Template_Method/GameTitleInfo.rb

$(BLIB)/Behavioral/Template_Method/BookTitleInfo.rb : src/Behavioral/Template_Method/BookTitleInfo.rb
	$(MKDIR) $(BLIB)/Behavioral/Template_Method/
	$(CP) src/Behavioral/Template_Method/BookTitleInfo.rb $(BLIB)/Behavioral/Template_Method/BookTitleInfo.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw Behavioral/Template_Method/BookTitleInfo.rb

$(BLIB)/Behavioral/Template_Method/TitleInfo.rb : src/Behavioral/Template_Method/TitleInfo.rb
	$(MKDIR) $(BLIB)/Behavioral/Template_Method/
	$(CP) src/Behavioral/Template_Method/TitleInfo.rb $(BLIB)/Behavioral/Template_Method/TitleInfo.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw Behavioral/Template_Method/TitleInfo.rb

$(BLIB)/Behavioral/Strategy.rb : src/Behavioral/Strategy.rb $(BLIB)/Behavioral/Strategy/DvdNameStrategy.rb $(BLIB)/Behavioral/Strategy/DvdNameReplaceSpacesStrategy.rb $(BLIB)/Behavioral/Strategy/DvdNameTheAtEndStrategy.rb $(BLIB)/Behavioral/Strategy/DvdNameAllCapStrategy.rb $(BLIB)/Behavioral/Strategy/DvdNameContext.rb
	$(MKDIR) $(BLIB)/Behavioral/
	$(CP) src/Behavioral/Strategy.rb $(BLIB)/Behavioral/Strategy.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw Behavioral/Strategy.rb

$(BLIB)/Behavioral/Visitor/DvdInfo.rb : src/Behavioral/Visitor/DvdInfo.rb
	$(MKDIR) $(BLIB)/Behavioral/Visitor/
	$(CP) src/Behavioral/Visitor/DvdInfo.rb $(BLIB)/Behavioral/Visitor/DvdInfo.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw Behavioral/Visitor/DvdInfo.rb

$(BLIB)/Behavioral/Visitor/BookInfo.rb : src/Behavioral/Visitor/BookInfo.rb
	$(MKDIR) $(BLIB)/Behavioral/Visitor/
	$(CP) src/Behavioral/Visitor/BookInfo.rb $(BLIB)/Behavioral/Visitor/BookInfo.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw Behavioral/Visitor/BookInfo.rb

$(BLIB)/Behavioral/Visitor/TitleShortBlurbVisitor.rb : src/Behavioral/Visitor/TitleShortBlurbVisitor.rb
	$(MKDIR) $(BLIB)/Behavioral/Visitor/
	$(CP) src/Behavioral/Visitor/TitleShortBlurbVisitor.rb $(BLIB)/Behavioral/Visitor/TitleShortBlurbVisitor.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw Behavioral/Visitor/TitleShortBlurbVisitor.rb

$(BLIB)/Behavioral/Visitor/AbstractTitleInfo.rb : src/Behavioral/Visitor/AbstractTitleInfo.rb
	$(MKDIR) $(BLIB)/Behavioral/Visitor/
	$(CP) src/Behavioral/Visitor/AbstractTitleInfo.rb $(BLIB)/Behavioral/Visitor/AbstractTitleInfo.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw Behavioral/Visitor/AbstractTitleInfo.rb

$(BLIB)/Behavioral/Visitor/TitleLongBlurbVisitor.rb : src/Behavioral/Visitor/TitleLongBlurbVisitor.rb
	$(MKDIR) $(BLIB)/Behavioral/Visitor/
	$(CP) src/Behavioral/Visitor/TitleLongBlurbVisitor.rb $(BLIB)/Behavioral/Visitor/TitleLongBlurbVisitor.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw Behavioral/Visitor/TitleLongBlurbVisitor.rb

$(BLIB)/Behavioral/Visitor/GameInfo.rb : src/Behavioral/Visitor/GameInfo.rb
	$(MKDIR) $(BLIB)/Behavioral/Visitor/
	$(CP) src/Behavioral/Visitor/GameInfo.rb $(BLIB)/Behavioral/Visitor/GameInfo.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw Behavioral/Visitor/GameInfo.rb

$(BLIB)/Behavioral/Visitor/TitleBlurbVisitor.rb : src/Behavioral/Visitor/TitleBlurbVisitor.rb
	$(MKDIR) $(BLIB)/Behavioral/Visitor/
	$(CP) src/Behavioral/Visitor/TitleBlurbVisitor.rb $(BLIB)/Behavioral/Visitor/TitleBlurbVisitor.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw Behavioral/Visitor/TitleBlurbVisitor.rb

$(BLIB)/Behavioral/Mediator/DvdLowercaseTitle.rb : src/Behavioral/Mediator/DvdLowercaseTitle.rb
	$(MKDIR) $(BLIB)/Behavioral/Mediator/
	$(CP) src/Behavioral/Mediator/DvdLowercaseTitle.rb $(BLIB)/Behavioral/Mediator/DvdLowercaseTitle.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw Behavioral/Mediator/DvdLowercaseTitle.rb

$(BLIB)/Behavioral/Mediator/DvdUppercaseTitle.rb : src/Behavioral/Mediator/DvdUppercaseTitle.rb
	$(MKDIR) $(BLIB)/Behavioral/Mediator/
	$(CP) src/Behavioral/Mediator/DvdUppercaseTitle.rb $(BLIB)/Behavioral/Mediator/DvdUppercaseTitle.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw Behavioral/Mediator/DvdUppercaseTitle.rb

$(BLIB)/Behavioral/Mediator/DvdMediator.rb : src/Behavioral/Mediator/DvdMediator.rb
	$(MKDIR) $(BLIB)/Behavioral/Mediator/
	$(CP) src/Behavioral/Mediator/DvdMediator.rb $(BLIB)/Behavioral/Mediator/DvdMediator.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw Behavioral/Mediator/DvdMediator.rb

$(BLIB)/Behavioral/Mediator/DvdTitle.rb : src/Behavioral/Mediator/DvdTitle.rb
	$(MKDIR) $(BLIB)/Behavioral/Mediator/
	$(CP) src/Behavioral/Mediator/DvdTitle.rb $(BLIB)/Behavioral/Mediator/DvdTitle.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw Behavioral/Mediator/DvdTitle.rb

$(BLIB)/Behavioral/Chain_Of_Responsibility/DvdSubCategory.rb : src/Behavioral/Chain_Of_Responsibility/DvdSubCategory.rb
	$(MKDIR) $(BLIB)/Behavioral/Chain_Of_Responsibility/
	$(CP) src/Behavioral/Chain_Of_Responsibility/DvdSubCategory.rb $(BLIB)/Behavioral/Chain_Of_Responsibility/DvdSubCategory.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw Behavioral/Chain_Of_Responsibility/DvdSubCategory.rb

$(BLIB)/Behavioral/Chain_Of_Responsibility/DvdCategory.rb : src/Behavioral/Chain_Of_Responsibility/DvdCategory.rb
	$(MKDIR) $(BLIB)/Behavioral/Chain_Of_Responsibility/
	$(CP) src/Behavioral/Chain_Of_Responsibility/DvdCategory.rb $(BLIB)/Behavioral/Chain_Of_Responsibility/DvdCategory.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw Behavioral/Chain_Of_Responsibility/DvdCategory.rb

$(BLIB)/Behavioral/Chain_Of_Responsibility/DvdSubSubCategory.rb : src/Behavioral/Chain_Of_Responsibility/DvdSubSubCategory.rb
	$(MKDIR) $(BLIB)/Behavioral/Chain_Of_Responsibility/
	$(CP) src/Behavioral/Chain_Of_Responsibility/DvdSubSubCategory.rb $(BLIB)/Behavioral/Chain_Of_Responsibility/DvdSubSubCategory.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw Behavioral/Chain_Of_Responsibility/DvdSubSubCategory.rb

$(BLIB)/Behavioral/Chain_Of_Responsibility/TopTitle.rb : src/Behavioral/Chain_Of_Responsibility/TopTitle.rb
	$(MKDIR) $(BLIB)/Behavioral/Chain_Of_Responsibility/
	$(CP) src/Behavioral/Chain_Of_Responsibility/TopTitle.rb $(BLIB)/Behavioral/Chain_Of_Responsibility/TopTitle.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw Behavioral/Chain_Of_Responsibility/TopTitle.rb

$(BLIB)/Behavioral/Mediator.rb : src/Behavioral/Mediator.rb $(BLIB)/Behavioral/Mediator/DvdMediator.rb $(BLIB)/Behavioral/Mediator/DvdTitle.rb $(BLIB)/Behavioral/Mediator/DvdUppercaseTitle.rb $(BLIB)/Behavioral/Mediator/DvdLowercaseTitle.rb
	$(MKDIR) $(BLIB)/Behavioral/
	$(CP) src/Behavioral/Mediator.rb $(BLIB)/Behavioral/Mediator.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw Behavioral/Mediator.rb

$(BLIB)/Behavioral/Template_Method.rb : src/Behavioral/Template_Method.rb $(BLIB)/Behavioral/Template_Method/TitleInfo.rb $(BLIB)/Behavioral/Template_Method/BookTitleInfo.rb $(BLIB)/Behavioral/Template_Method/DvdTitleInfo.rb $(BLIB)/Behavioral/Template_Method/GameTitleInfo.rb
	$(MKDIR) $(BLIB)/Behavioral/
	$(CP) src/Behavioral/Template_Method.rb $(BLIB)/Behavioral/Template_Method.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw Behavioral/Template_Method.rb

$(BLIB)/Behavioral/Observer.rb : src/Behavioral/Observer.rb $(BLIB)/Behavioral/Observer/DvdRelease.rb $(BLIB)/Behavioral/Observer/DvdReleaseByCategory.rb $(BLIB)/Behavioral/Observer/DvdSubscriber.rb
	$(MKDIR) $(BLIB)/Behavioral/
	$(CP) src/Behavioral/Observer.rb $(BLIB)/Behavioral/Observer.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw Behavioral/Observer.rb

$(BLIB)/Behavioral/Command/DvdCommandNameStarsOff.rb : src/Behavioral/Command/DvdCommandNameStarsOff.rb
	$(MKDIR) $(BLIB)/Behavioral/Command/
	$(CP) src/Behavioral/Command/DvdCommandNameStarsOff.rb $(BLIB)/Behavioral/Command/DvdCommandNameStarsOff.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw Behavioral/Command/DvdCommandNameStarsOff.rb

$(BLIB)/Behavioral/Command/CommandAbstract.rb : src/Behavioral/Command/CommandAbstract.rb
	$(MKDIR) $(BLIB)/Behavioral/Command/
	$(CP) src/Behavioral/Command/CommandAbstract.rb $(BLIB)/Behavioral/Command/CommandAbstract.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw Behavioral/Command/CommandAbstract.rb

$(BLIB)/Behavioral/Command/DvdName.rb : src/Behavioral/Command/DvdName.rb
	$(MKDIR) $(BLIB)/Behavioral/Command/
	$(CP) src/Behavioral/Command/DvdName.rb $(BLIB)/Behavioral/Command/DvdName.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw Behavioral/Command/DvdName.rb

$(BLIB)/Behavioral/Command/DvdCommandNameStarsOn.rb : src/Behavioral/Command/DvdCommandNameStarsOn.rb
	$(MKDIR) $(BLIB)/Behavioral/Command/
	$(CP) src/Behavioral/Command/DvdCommandNameStarsOn.rb $(BLIB)/Behavioral/Command/DvdCommandNameStarsOn.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw Behavioral/Command/DvdCommandNameStarsOn.rb

$(BLIB)/Behavioral/Memento/DvdMemento.rb : src/Behavioral/Memento/DvdMemento.rb
	$(MKDIR) $(BLIB)/Behavioral/Memento/
	$(CP) src/Behavioral/Memento/DvdMemento.rb $(BLIB)/Behavioral/Memento/DvdMemento.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw Behavioral/Memento/DvdMemento.rb

$(BLIB)/Behavioral/Memento/DvdDetails.rb : src/Behavioral/Memento/DvdDetails.rb
	$(MKDIR) $(BLIB)/Behavioral/Memento/
	$(CP) src/Behavioral/Memento/DvdDetails.rb $(BLIB)/Behavioral/Memento/DvdDetails.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw Behavioral/Memento/DvdDetails.rb

$(BLIB)/Behavioral/State.rb : src/Behavioral/State.rb $(BLIB)/Behavioral/State/DvdStateNameStars.rb $(BLIB)/Behavioral/State/DvdStateNameExclaim.rb $(BLIB)/Behavioral/State/DvdStateName.rb $(BLIB)/Behavioral/State/DvdStateContext.rb
	$(MKDIR) $(BLIB)/Behavioral/
	$(CP) src/Behavioral/State.rb $(BLIB)/Behavioral/State.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw Behavioral/State.rb

$(BLIB)/Behavioral/Strategy/DvdNameTheAtEndStrategy.rb : src/Behavioral/Strategy/DvdNameTheAtEndStrategy.rb
	$(MKDIR) $(BLIB)/Behavioral/Strategy/
	$(CP) src/Behavioral/Strategy/DvdNameTheAtEndStrategy.rb $(BLIB)/Behavioral/Strategy/DvdNameTheAtEndStrategy.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw Behavioral/Strategy/DvdNameTheAtEndStrategy.rb

$(BLIB)/Behavioral/Strategy/DvdNameAllCapStrategy.rb : src/Behavioral/Strategy/DvdNameAllCapStrategy.rb
	$(MKDIR) $(BLIB)/Behavioral/Strategy/
	$(CP) src/Behavioral/Strategy/DvdNameAllCapStrategy.rb $(BLIB)/Behavioral/Strategy/DvdNameAllCapStrategy.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw Behavioral/Strategy/DvdNameAllCapStrategy.rb

$(BLIB)/Behavioral/Strategy/DvdNameStrategy.rb : src/Behavioral/Strategy/DvdNameStrategy.rb
	$(MKDIR) $(BLIB)/Behavioral/Strategy/
	$(CP) src/Behavioral/Strategy/DvdNameStrategy.rb $(BLIB)/Behavioral/Strategy/DvdNameStrategy.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw Behavioral/Strategy/DvdNameStrategy.rb

$(BLIB)/Behavioral/Strategy/DvdNameContext.rb : src/Behavioral/Strategy/DvdNameContext.rb
	$(MKDIR) $(BLIB)/Behavioral/Strategy/
	$(CP) src/Behavioral/Strategy/DvdNameContext.rb $(BLIB)/Behavioral/Strategy/DvdNameContext.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw Behavioral/Strategy/DvdNameContext.rb

$(BLIB)/Behavioral/Strategy/DvdNameReplaceSpacesStrategy.rb : src/Behavioral/Strategy/DvdNameReplaceSpacesStrategy.rb
	$(MKDIR) $(BLIB)/Behavioral/Strategy/
	$(CP) src/Behavioral/Strategy/DvdNameReplaceSpacesStrategy.rb $(BLIB)/Behavioral/Strategy/DvdNameReplaceSpacesStrategy.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw Behavioral/Strategy/DvdNameReplaceSpacesStrategy.rb

$(BLIB)/Behavioral/Iterator/DvdList.rb : src/Behavioral/Iterator/DvdList.rb
	$(MKDIR) $(BLIB)/Behavioral/Iterator/
	$(CP) src/Behavioral/Iterator/DvdList.rb $(BLIB)/Behavioral/Iterator/DvdList.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw Behavioral/Iterator/DvdList.rb

$(BLIB)/Behavioral/Iterator/DvdListIterator.rb : src/Behavioral/Iterator/DvdListIterator.rb
	$(MKDIR) $(BLIB)/Behavioral/Iterator/
	$(CP) src/Behavioral/Iterator/DvdListIterator.rb $(BLIB)/Behavioral/Iterator/DvdListIterator.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw Behavioral/Iterator/DvdListIterator.rb

$(BLIB)/Creational/Singleton/SingleSpoon.rb : src/Creational/Singleton/SingleSpoon.rb
	$(MKDIR) $(BLIB)/Creational/Singleton/
	$(CP) src/Creational/Singleton/SingleSpoon.rb $(BLIB)/Creational/Singleton/SingleSpoon.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw Creational/Singleton/SingleSpoon.rb

$(BLIB)/Creational/Builder.rb : src/Creational/Builder.rb $(BLIB)/Creational/Builder/BostonSoupBuffetBuilder.rb $(BLIB)/Creational/Builder/SoupBuffetBuilder.rb $(BLIB)/Creational/Builder/HonoluluSoupBuffetBuilder.rb
	$(MKDIR) $(BLIB)/Creational/
	$(CP) src/Creational/Builder.rb $(BLIB)/Creational/Builder.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw Creational/Builder.rb

$(BLIB)/Creational/Factory_Method.rb : src/Creational/Factory_Method.rb $(BLIB)/Creational/Factory_Method/SoupFactoryMethod.rb $(BLIB)/Creational/Factory_Method/HonoluluSoupFactoryMethodSubclass.rb $(BLIB)/Creational/Factory_Method/BostonSoupFactoryMethodSubclass.rb
	$(MKDIR) $(BLIB)/Creational/
	$(CP) src/Creational/Factory_Method.rb $(BLIB)/Creational/Factory_Method.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw Creational/Factory_Method.rb

$(BLIB)/Creational/Abstract_Factory.rb : src/Creational/Abstract_Factory.rb $(BLIB)/Creational/Abstract_Factory/BostonConcreteSoupFactory.rb $(BLIB)/Creational/Abstract_Factory/HonoluluConcreteSoupFactory.rb $(BLIB)/Creational/Abstract_Factory/AbstractSoupFactory.rb
	$(MKDIR) $(BLIB)/Creational/
	$(CP) src/Creational/Abstract_Factory.rb $(BLIB)/Creational/Abstract_Factory.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw Creational/Abstract_Factory.rb

$(BLIB)/Creational/Builder/BostonSoupBuffetBuilder.rb : src/Creational/Builder/BostonSoupBuffetBuilder.rb
	$(MKDIR) $(BLIB)/Creational/Builder/
	$(CP) src/Creational/Builder/BostonSoupBuffetBuilder.rb $(BLIB)/Creational/Builder/BostonSoupBuffetBuilder.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw Creational/Builder/BostonSoupBuffetBuilder.rb

$(BLIB)/Creational/Builder/HonoluluSoupBuffetBuilder.rb : src/Creational/Builder/HonoluluSoupBuffetBuilder.rb
	$(MKDIR) $(BLIB)/Creational/Builder/
	$(CP) src/Creational/Builder/HonoluluSoupBuffetBuilder.rb $(BLIB)/Creational/Builder/HonoluluSoupBuffetBuilder.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw Creational/Builder/HonoluluSoupBuffetBuilder.rb

$(BLIB)/Creational/Builder/SoupBuffetBuilder.rb : src/Creational/Builder/SoupBuffetBuilder.rb
	$(MKDIR) $(BLIB)/Creational/Builder/
	$(CP) src/Creational/Builder/SoupBuffetBuilder.rb $(BLIB)/Creational/Builder/SoupBuffetBuilder.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw Creational/Builder/SoupBuffetBuilder.rb

$(BLIB)/Creational/Singleton.rb : src/Creational/Singleton.rb $(BLIB)/Creational/Singleton/SingleSpoon.rb
	$(MKDIR) $(BLIB)/Creational/
	$(CP) src/Creational/Singleton.rb $(BLIB)/Creational/Singleton.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw Creational/Singleton.rb

$(BLIB)/Creational/Prototype.rb : src/Creational/Prototype.rb $(BLIB)/Creational/Prototype/AbstractFork.rb $(BLIB)/Creational/Prototype/AbstractSpoon.rb $(BLIB)/Creational/Prototype/SoupSpoon.rb $(BLIB)/Creational/Prototype/SaladFork.rb $(BLIB)/Creational/Prototype/SaladSpoon.rb $(BLIB)/Creational/Prototype/PrototypeFactory.rb
	$(MKDIR) $(BLIB)/Creational/
	$(CP) src/Creational/Prototype.rb $(BLIB)/Creational/Prototype.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw Creational/Prototype.rb

$(BLIB)/Creational/Factory_Method/HonoluluSoupFactoryMethodSubclass.rb : src/Creational/Factory_Method/HonoluluSoupFactoryMethodSubclass.rb
	$(MKDIR) $(BLIB)/Creational/Factory_Method/
	$(CP) src/Creational/Factory_Method/HonoluluSoupFactoryMethodSubclass.rb $(BLIB)/Creational/Factory_Method/HonoluluSoupFactoryMethodSubclass.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw Creational/Factory_Method/HonoluluSoupFactoryMethodSubclass.rb

$(BLIB)/Creational/Factory_Method/BostonSoupFactoryMethodSubclass.rb : src/Creational/Factory_Method/BostonSoupFactoryMethodSubclass.rb
	$(MKDIR) $(BLIB)/Creational/Factory_Method/
	$(CP) src/Creational/Factory_Method/BostonSoupFactoryMethodSubclass.rb $(BLIB)/Creational/Factory_Method/BostonSoupFactoryMethodSubclass.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw Creational/Factory_Method/BostonSoupFactoryMethodSubclass.rb

$(BLIB)/Creational/Factory_Method/SoupFactoryMethod.rb : src/Creational/Factory_Method/SoupFactoryMethod.rb
	$(MKDIR) $(BLIB)/Creational/Factory_Method/
	$(CP) src/Creational/Factory_Method/SoupFactoryMethod.rb $(BLIB)/Creational/Factory_Method/SoupFactoryMethod.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw Creational/Factory_Method/SoupFactoryMethod.rb

$(BLIB)/Creational/Abstract_Factory/BostonConcreteSoupFactory.rb : src/Creational/Abstract_Factory/BostonConcreteSoupFactory.rb
	$(MKDIR) $(BLIB)/Creational/Abstract_Factory/
	$(CP) src/Creational/Abstract_Factory/BostonConcreteSoupFactory.rb $(BLIB)/Creational/Abstract_Factory/BostonConcreteSoupFactory.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw Creational/Abstract_Factory/BostonConcreteSoupFactory.rb

$(BLIB)/Creational/Abstract_Factory/HonoluluConcreteSoupFactory.rb : src/Creational/Abstract_Factory/HonoluluConcreteSoupFactory.rb
	$(MKDIR) $(BLIB)/Creational/Abstract_Factory/
	$(CP) src/Creational/Abstract_Factory/HonoluluConcreteSoupFactory.rb $(BLIB)/Creational/Abstract_Factory/HonoluluConcreteSoupFactory.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw Creational/Abstract_Factory/HonoluluConcreteSoupFactory.rb

$(BLIB)/Creational/Abstract_Factory/AbstractSoupFactory.rb : src/Creational/Abstract_Factory/AbstractSoupFactory.rb
	$(MKDIR) $(BLIB)/Creational/Abstract_Factory/
	$(CP) src/Creational/Abstract_Factory/AbstractSoupFactory.rb $(BLIB)/Creational/Abstract_Factory/AbstractSoupFactory.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw Creational/Abstract_Factory/AbstractSoupFactory.rb

$(BLIB)/Creational/Prototype/AbstractSpoon.rb : src/Creational/Prototype/AbstractSpoon.rb
	$(MKDIR) $(BLIB)/Creational/Prototype/
	$(CP) src/Creational/Prototype/AbstractSpoon.rb $(BLIB)/Creational/Prototype/AbstractSpoon.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw Creational/Prototype/AbstractSpoon.rb

$(BLIB)/Creational/Prototype/SoupSpoon.rb : src/Creational/Prototype/SoupSpoon.rb
	$(MKDIR) $(BLIB)/Creational/Prototype/
	$(CP) src/Creational/Prototype/SoupSpoon.rb $(BLIB)/Creational/Prototype/SoupSpoon.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw Creational/Prototype/SoupSpoon.rb

$(BLIB)/Creational/Prototype/SaladSpoon.rb : src/Creational/Prototype/SaladSpoon.rb
	$(MKDIR) $(BLIB)/Creational/Prototype/
	$(CP) src/Creational/Prototype/SaladSpoon.rb $(BLIB)/Creational/Prototype/SaladSpoon.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw Creational/Prototype/SaladSpoon.rb

$(BLIB)/Creational/Prototype/SaladFork.rb : src/Creational/Prototype/SaladFork.rb
	$(MKDIR) $(BLIB)/Creational/Prototype/
	$(CP) src/Creational/Prototype/SaladFork.rb $(BLIB)/Creational/Prototype/SaladFork.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw Creational/Prototype/SaladFork.rb

$(BLIB)/Creational/Prototype/AbstractFork.rb : src/Creational/Prototype/AbstractFork.rb
	$(MKDIR) $(BLIB)/Creational/Prototype/
	$(CP) src/Creational/Prototype/AbstractFork.rb $(BLIB)/Creational/Prototype/AbstractFork.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw Creational/Prototype/AbstractFork.rb

$(BLIB)/Creational/Prototype/PrototypeFactory.rb : src/Creational/Prototype/PrototypeFactory.rb
	$(MKDIR) $(BLIB)/Creational/Prototype/
	$(CP) src/Creational/Prototype/PrototypeFactory.rb $(BLIB)/Creational/Prototype/PrototypeFactory.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw Creational/Prototype/PrototypeFactory.rb

$(BLIB)/Structural/Decorator.rb : src/Structural/Decorator.rb $(BLIB)/Structural/Decorator/Tea.rb $(BLIB)/Structural/Decorator/TeaLeaves.rb $(BLIB)/Structural/Decorator/ChaiDecorator.rb
	$(MKDIR) $(BLIB)/Structural/
	$(CP) src/Structural/Decorator.rb $(BLIB)/Structural/Decorator.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw Structural/Decorator.rb

$(BLIB)/Structural/Adapter.rb : src/Structural/Adapter.rb $(BLIB)/Structural/Adapter/TeaBag.rb $(BLIB)/Structural/Adapter/LooseLeafTea.rb $(BLIB)/Structural/Adapter/TeaCup.rb $(BLIB)/Structural/Adapter/TeaBall.rb 
	$(MKDIR) $(BLIB)/Structural/
	$(CP) src/Structural/Adapter.rb $(BLIB)/Structural/Adapter.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw Structural/Adapter.rb

$(BLIB)/Structural/Facade.rb : src/Structural/Facade.rb $(BLIB)/Structural/Facade/FacadeTeaBag.rb $(BLIB)/Structural/Facade/FacadeWater.rb $(BLIB)/Structural/Facade/FacadeTeaCup.rb $(BLIB)/Structural/Facade/FacadeCuppaMaker.rb 
	$(MKDIR) $(BLIB)/Structural/
	$(CP) src/Structural/Facade.rb $(BLIB)/Structural/Facade.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw Structural/Facade.rb

$(BLIB)/Structural/Proxy.rb : src/Structural/Proxy.rb $(BLIB)/Structural/Proxy/PotOfTeaInterface.rb $(BLIB)/Structural/Proxy/PotOfTea.rb $(BLIB)/Structural/Proxy/PotOfTeaProxy.rb 
	$(MKDIR) $(BLIB)/Structural/
	$(CP) src/Structural/Proxy.rb $(BLIB)/Structural/Proxy.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw Structural/Proxy.rb

$(BLIB)/Structural/Flyweight/TeaFlavorFactory.rb : src/Structural/Flyweight/TeaFlavorFactory.rb
	$(MKDIR) $(BLIB)/Structural/Flyweight/
	$(CP) src/Structural/Flyweight/TeaFlavorFactory.rb $(BLIB)/Structural/Flyweight/TeaFlavorFactory.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw Structural/Flyweight/TeaFlavorFactory.rb

$(BLIB)/Structural/Flyweight/TeaOrder.rb : src/Structural/Flyweight/TeaOrder.rb
	$(MKDIR) $(BLIB)/Structural/Flyweight/
	$(CP) src/Structural/Flyweight/TeaOrder.rb $(BLIB)/Structural/Flyweight/TeaOrder.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw Structural/Flyweight/TeaOrder.rb

$(BLIB)/Structural/Flyweight/TeaOrderContext.rb : src/Structural/Flyweight/TeaOrderContext.rb
	$(MKDIR) $(BLIB)/Structural/Flyweight/
	$(CP) src/Structural/Flyweight/TeaOrderContext.rb $(BLIB)/Structural/Flyweight/TeaOrderContext.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw Structural/Flyweight/TeaOrderContext.rb

$(BLIB)/Structural/Flyweight/TeaFlavor.rb : src/Structural/Flyweight/TeaFlavor.rb
	$(MKDIR) $(BLIB)/Structural/Flyweight/
	$(CP) src/Structural/Flyweight/TeaFlavor.rb $(BLIB)/Structural/Flyweight/TeaFlavor.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw Structural/Flyweight/TeaFlavor.rb

$(BLIB)/Structural/Facade/FacadeTeaBag.rb : src/Structural/Facade/FacadeTeaBag.rb
	$(MKDIR) $(BLIB)/Structural/Facade/
	$(CP) src/Structural/Facade/FacadeTeaBag.rb $(BLIB)/Structural/Facade/FacadeTeaBag.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw Structural/Facade/FacadeTeaBag.rb

$(BLIB)/Structural/Facade/FacadeTeaCup.rb : src/Structural/Facade/FacadeTeaCup.rb
	$(MKDIR) $(BLIB)/Structural/Facade/
	$(CP) src/Structural/Facade/FacadeTeaCup.rb $(BLIB)/Structural/Facade/FacadeTeaCup.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw Structural/Facade/FacadeTeaCup.rb

$(BLIB)/Structural/Facade/FacadeCuppaMaker.rb : src/Structural/Facade/FacadeCuppaMaker.rb
	$(MKDIR) $(BLIB)/Structural/Facade/
	$(CP) src/Structural/Facade/FacadeCuppaMaker.rb $(BLIB)/Structural/Facade/FacadeCuppaMaker.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw Structural/Facade/FacadeCuppaMaker.rb

$(BLIB)/Structural/Facade/FacadeWater.rb : src/Structural/Facade/FacadeWater.rb
	$(MKDIR) $(BLIB)/Structural/Facade/
	$(CP) src/Structural/Facade/FacadeWater.rb $(BLIB)/Structural/Facade/FacadeWater.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw Structural/Facade/FacadeWater.rb

$(BLIB)/Structural/Flyweight.rb : src/Structural/Flyweight.rb $(BLIB)/Structural/Flyweight/TeaOrder.rb $(BLIB)/Structural/Flyweight/TeaOrderContext.rb $(BLIB)/Structural/Flyweight/TeaFlavor.rb $(BLIB)/Structural/Flyweight/TeaFlavorFactory.rb 
	$(MKDIR) $(BLIB)/Structural/
	$(CP) src/Structural/Flyweight.rb $(BLIB)/Structural/Flyweight.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw Structural/Flyweight.rb

$(BLIB)/Structural/Proxy/PotOfTea.rb : src/Structural/Proxy/PotOfTea.rb
	$(MKDIR) $(BLIB)/Structural/Proxy/
	$(CP) src/Structural/Proxy/PotOfTea.rb $(BLIB)/Structural/Proxy/PotOfTea.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw Structural/Proxy/PotOfTea.rb

$(BLIB)/Structural/Proxy/PotOfTeaInterface.rb : src/Structural/Proxy/PotOfTeaInterface.rb
	$(MKDIR) $(BLIB)/Structural/Proxy/
	$(CP) src/Structural/Proxy/PotOfTeaInterface.rb $(BLIB)/Structural/Proxy/PotOfTeaInterface.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw Structural/Proxy/PotOfTeaInterface.rb

$(BLIB)/Structural/Proxy/PotOfTeaProxy.rb : src/Structural/Proxy/PotOfTeaProxy.rb
	$(MKDIR) $(BLIB)/Structural/Proxy/
	$(CP) src/Structural/Proxy/PotOfTeaProxy.rb $(BLIB)/Structural/Proxy/PotOfTeaProxy.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw Structural/Proxy/PotOfTeaProxy.rb

$(BLIB)/Structural/Composite/TinOfTeaBags.rb : src/Structural/Composite/TinOfTeaBags.rb
	$(MKDIR) $(BLIB)/Structural/Composite/
	$(CP) src/Structural/Composite/TinOfTeaBags.rb $(BLIB)/Structural/Composite/TinOfTeaBags.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw Structural/Composite/TinOfTeaBags.rb

$(BLIB)/Structural/Composite/OneTeaBag.rb : src/Structural/Composite/OneTeaBag.rb
	$(MKDIR) $(BLIB)/Structural/Composite/
	$(CP) src/Structural/Composite/OneTeaBag.rb $(BLIB)/Structural/Composite/OneTeaBag.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw Structural/Composite/OneTeaBag.rb

$(BLIB)/Structural/Composite/TeaBags.rb : src/Structural/Composite/TeaBags.rb
	$(MKDIR) $(BLIB)/Structural/Composite/
	$(CP) src/Structural/Composite/TeaBags.rb $(BLIB)/Structural/Composite/TeaBags.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw Structural/Composite/TeaBags.rb

$(BLIB)/Structural/Adapter/TeaCup.rb : src/Structural/Adapter/TeaCup.rb
	$(MKDIR) $(BLIB)/Structural/Adapter/
	$(CP) src/Structural/Adapter/TeaCup.rb $(BLIB)/Structural/Adapter/TeaCup.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw Structural/Adapter/TeaCup.rb

$(BLIB)/Structural/Adapter/LooseLeafTea.rb : src/Structural/Adapter/LooseLeafTea.rb
	$(MKDIR) $(BLIB)/Structural/Adapter/
	$(CP) src/Structural/Adapter/LooseLeafTea.rb $(BLIB)/Structural/Adapter/LooseLeafTea.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw Structural/Adapter/LooseLeafTea.rb

$(BLIB)/Structural/Adapter/TeaBall.rb : src/Structural/Adapter/TeaBall.rb
	$(MKDIR) $(BLIB)/Structural/Adapter/
	$(CP) src/Structural/Adapter/TeaBall.rb $(BLIB)/Structural/Adapter/TeaBall.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw Structural/Adapter/TeaBall.rb

$(BLIB)/Structural/Adapter/TeaBag.rb : src/Structural/Adapter/TeaBag.rb
	$(MKDIR) $(BLIB)/Structural/Adapter/
	$(CP) src/Structural/Adapter/TeaBag.rb $(BLIB)/Structural/Adapter/TeaBag.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw Structural/Adapter/TeaBag.rb

$(BLIB)/Structural/Decorator/Tea.rb : src/Structural/Decorator/Tea.rb
	$(MKDIR) $(BLIB)/Structural/Decorator/
	$(CP) src/Structural/Decorator/Tea.rb $(BLIB)/Structural/Decorator/Tea.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw Structural/Decorator/Tea.rb

$(BLIB)/Structural/Decorator/ChaiDecorator.rb : src/Structural/Decorator/ChaiDecorator.rb
	$(MKDIR) $(BLIB)/Structural/Decorator/
	$(CP) src/Structural/Decorator/ChaiDecorator.rb $(BLIB)/Structural/Decorator/ChaiDecorator.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw Structural/Decorator/ChaiDecorator.rb

$(BLIB)/Structural/Decorator/TeaLeaves.rb : src/Structural/Decorator/TeaLeaves.rb
	$(MKDIR) $(BLIB)/Structural/Decorator/
	$(CP) src/Structural/Decorator/TeaLeaves.rb $(BLIB)/Structural/Decorator/TeaLeaves.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw Structural/Decorator/TeaLeaves.rb

$(BLIB)/Structural/Bridge/SodaImpSingleton.rb : src/Structural/Bridge/SodaImpSingleton.rb
	$(MKDIR) $(BLIB)/Structural/Bridge/
	$(CP) src/Structural/Bridge/SodaImpSingleton.rb $(BLIB)/Structural/Bridge/SodaImpSingleton.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw Structural/Bridge/SodaImpSingleton.rb

$(BLIB)/Structural/Bridge/SuperSizeSoda.rb : src/Structural/Bridge/SuperSizeSoda.rb
	$(MKDIR) $(BLIB)/Structural/Bridge/
	$(CP) src/Structural/Bridge/SuperSizeSoda.rb $(BLIB)/Structural/Bridge/SuperSizeSoda.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw Structural/Bridge/SuperSizeSoda.rb

$(BLIB)/Structural/Bridge/GrapeSodaImp.rb : src/Structural/Bridge/GrapeSodaImp.rb
	$(MKDIR) $(BLIB)/Structural/Bridge/
	$(CP) src/Structural/Bridge/GrapeSodaImp.rb $(BLIB)/Structural/Bridge/GrapeSodaImp.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw Structural/Bridge/GrapeSodaImp.rb

$(BLIB)/Structural/Bridge/MediumSoda.rb : src/Structural/Bridge/MediumSoda.rb
	$(MKDIR) $(BLIB)/Structural/Bridge/
	$(CP) src/Structural/Bridge/MediumSoda.rb $(BLIB)/Structural/Bridge/MediumSoda.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw Structural/Bridge/MediumSoda.rb

$(BLIB)/Structural/Bridge/SodaImp.rb : src/Structural/Bridge/SodaImp.rb
	$(MKDIR) $(BLIB)/Structural/Bridge/
	$(CP) src/Structural/Bridge/SodaImp.rb $(BLIB)/Structural/Bridge/SodaImp.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw Structural/Bridge/SodaImp.rb

$(BLIB)/Structural/Bridge/CherrySodaImp.rb : src/Structural/Bridge/CherrySodaImp.rb
	$(MKDIR) $(BLIB)/Structural/Bridge/
	$(CP) src/Structural/Bridge/CherrySodaImp.rb $(BLIB)/Structural/Bridge/CherrySodaImp.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw Structural/Bridge/CherrySodaImp.rb

$(BLIB)/Structural/Bridge/OrangeSodaImp.rb : src/Structural/Bridge/OrangeSodaImp.rb
	$(MKDIR) $(BLIB)/Structural/Bridge/
	$(CP) src/Structural/Bridge/OrangeSodaImp.rb $(BLIB)/Structural/Bridge/OrangeSodaImp.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw Structural/Bridge/OrangeSodaImp.rb

$(BLIB)/Structural/Bridge/Soda.rb : src/Structural/Bridge/Soda.rb
	$(MKDIR) $(BLIB)/Structural/Bridge/
	$(CP) src/Structural/Bridge/Soda.rb $(BLIB)/Structural/Bridge/Soda.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw Structural/Bridge/Soda.rb

$(BLIB)/Structural/Composite.rb : src/Structural/Composite.rb $(BLIB)/Structural/Composite/TeaBags.rb $(BLIB)/Structural/Composite/TinOfTeaBags.rb $(BLIB)/Structural/Composite/OneTeaBag.rb
	$(MKDIR) $(BLIB)/Structural/
	$(CP) src/Structural/Composite.rb $(BLIB)/Structural/Composite.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw Structural/Composite.rb

$(BLIB)/Structural/Bridge.rb : src/Structural/Bridge.rb $(BLIB)/Structural/Bridge/SodaImp.rb $(BLIB)/Structural/Bridge/SodaImpSingleton.rb $(BLIB)/Structural/Bridge/Soda.rb $(BLIB)/Structural/Bridge/CherrySodaImp.rb $(BLIB)/Structural/Bridge/GrapeSodaImp.rb $(BLIB)/Structural/Bridge/OrangeSodaImp.rb $(BLIB)/Structural/Bridge/SuperSizeSoda.rb $(BLIB)/Structural/Bridge/MediumSoda.rb 
	$(MKDIR) $(BLIB)/Structural/
	$(CP) src/Structural/Bridge.rb $(BLIB)/Structural/Bridge.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw Structural/Bridge.rb

$(BLIB)/common/Minnestrone.rb : src/common/Minnestrone.rb
	$(MKDIR) $(BLIB)/common/
	$(CP) src/common/Minnestrone.rb $(BLIB)/common/Minnestrone.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw common/Minnestrone.rb

$(BLIB)/common/BostonFishChowder.rb : src/common/BostonFishChowder.rb
	$(MKDIR) $(BLIB)/common/
	$(CP) src/common/BostonFishChowder.rb $(BLIB)/common/BostonFishChowder.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw common/BostonFishChowder.rb

$(BLIB)/common/HonoluluClamChowder.rb : src/common/HonoluluClamChowder.rb
	$(MKDIR) $(BLIB)/common/
	$(CP) src/common/HonoluluClamChowder.rb $(BLIB)/common/HonoluluClamChowder.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw common/HonoluluClamChowder.rb

$(BLIB)/common/TofuSoup.rb : src/common/TofuSoup.rb
	$(MKDIR) $(BLIB)/common/
	$(CP) src/common/TofuSoup.rb $(BLIB)/common/TofuSoup.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw common/TofuSoup.rb

$(BLIB)/common/SoupBuffet.rb : src/common/SoupBuffet.rb
	$(MKDIR) $(BLIB)/common/
	$(CP) src/common/SoupBuffet.rb $(BLIB)/common/SoupBuffet.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw common/SoupBuffet.rb

$(BLIB)/common/Soup.rb : src/common/Soup.rb
	$(MKDIR) $(BLIB)/common/
	$(CP) src/common/Soup.rb $(BLIB)/common/Soup.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw common/Soup.rb

$(BLIB)/common/PastaFazul.rb : src/common/PastaFazul.rb
	$(MKDIR) $(BLIB)/common/
	$(CP) src/common/PastaFazul.rb $(BLIB)/common/PastaFazul.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw common/PastaFazul.rb

$(BLIB)/common/ChickenSoup.rb : src/common/ChickenSoup.rb
	$(MKDIR) $(BLIB)/common/
	$(CP) src/common/ChickenSoup.rb $(BLIB)/common/ChickenSoup.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw common/ChickenSoup.rb

$(BLIB)/common/ClamChowder.rb : src/common/ClamChowder.rb
	$(MKDIR) $(BLIB)/common/
	$(CP) src/common/ClamChowder.rb $(BLIB)/common/ClamChowder.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw common/ClamChowder.rb

$(BLIB)/common/FishChowder.rb : src/common/FishChowder.rb
	$(MKDIR) $(BLIB)/common/
	$(CP) src/common/FishChowder.rb $(BLIB)/common/FishChowder.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw common/FishChowder.rb

$(BLIB)/common/HonoluluFishChowder.rb : src/common/HonoluluFishChowder.rb
	$(MKDIR) $(BLIB)/common/
	$(CP) src/common/HonoluluFishChowder.rb $(BLIB)/common/HonoluluFishChowder.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw common/HonoluluFishChowder.rb

$(BLIB)/common/VegetableSoup.rb : src/common/VegetableSoup.rb
	$(MKDIR) $(BLIB)/common/
	$(CP) src/common/VegetableSoup.rb $(BLIB)/common/VegetableSoup.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw common/VegetableSoup.rb

$(BLIB)/common/BostonClamChowder.rb : src/common/BostonClamChowder.rb
	$(MKDIR) $(BLIB)/common/
	$(CP) src/common/BostonClamChowder.rb $(BLIB)/common/BostonClamChowder.rb
	RUBYLIB=$(RLIB) $(RUBY) -C $(BLIB) -cw common/BostonClamChowder.rb


test: build
	env RUBYLIB=$(RLIB) prove -e '$(RUBY) -Ilib:test' -r t/*.rb

loudtest: build
	env RUBYLIB=$(RLIB) prove -ve '$(RUBY) -Ilib:test' -r t/*.rb

timetest: build
	env RUBYLIB=$(RLIB) RUBY_TEST_TIMES=1 prove -ve '$(RUBY) -Ilib:test' -r t/*.rb

install: test
	echo "install is a no op"


clean: 	
	rm -fr $(BLIB)

distclean purge: clean
	rm -r Makefile

