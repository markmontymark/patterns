(function() {
  define(['Behavioral/Interpreter/DvdInterpreterContext', 'Behavioral/Interpreter/TitleAndActor', 'Behavioral/Interpreter/DvdInterpreterClient'], function(DvdInterpreterContext, TitleAndActor, DvdInterpreterClient) {
    'use strict';
    return describe('', function() {
      return it('', function() {
        var dvdInterpreterClient, dvdInterpreterContext;
        dvdInterpreterContext = new DvdInterpreterContext();
        dvdInterpreterContext.addTitle("Caddy Shack");
        dvdInterpreterContext.addTitle("Training Day");
        dvdInterpreterContext.addTitle("Hamlet");
        dvdInterpreterContext.addActor("Ethan Hawke");
        dvdInterpreterContext.addActor("Denzel Washington");
        dvdInterpreterContext.addTitleAndActor(new TitleAndActor("Hamlet", "Ethan Hawke"));
        dvdInterpreterContext.addTitleAndActor(new TitleAndActor("Training Day", "Ethan Hawke"));
        dvdInterpreterContext.addTitleAndActor(new TitleAndActor("Caddy Shack", "Ethan Hawke"));
        dvdInterpreterContext.addTitleAndActor(new TitleAndActor("Training Day", "Denzel Washington"));
        dvdInterpreterClient = new DvdInterpreterClient(dvdInterpreterContext);
        expect("interpreting show actor: " + dvdInterpreterClient.interpret("show actor")).toEqual('interpreting show actor: Query Result: ,Ethan Hawke, Denzel Washington');
        expect("interpreting show actor for title : " + dvdInterpreterClient.interpret("show actor for title ")).toEqual('interpreting show actor for title : Query Result: ,');
        expect("interpreting show title: " + dvdInterpreterClient.interpret("show title")).toEqual('interpreting show title: Query Result: ,Caddy Shack, Training Day, Hamlet');
        return expect("interpreting show title for actor : " + dvdInterpreterClient.interpret("show title for actor ")).toEqual('interpreting show title for actor : Query Result: ,');
      });
    });
  });

}).call(this);
