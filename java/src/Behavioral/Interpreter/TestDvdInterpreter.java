package Behavioral.Interpreter;


//TestDvdInterpreter.java - testing the Interpreter

class TestDvdInterpreter {
    
   public static void main(String[] args) {
       DvdInterpreterContext dvdInterpreterContext = 
         new DvdInterpreterContext();
       dvdInterpreterContext.addTitle("Caddy Shack");
       dvdInterpreterContext.addTitle("Training Day");
       dvdInterpreterContext.addTitle("Hamlet");

       dvdInterpreterContext.addActor("Ethan Hawke");
       dvdInterpreterContext.addActor("Denzel Washington");
       
       dvdInterpreterContext.addTitleAndActor(
         new TitleAndActor("Hamlet", "Ethan Hawke"));
       dvdInterpreterContext.addTitleAndActor(
         new TitleAndActor("Training Day", "Ethan Hawke"));
       dvdInterpreterContext.addTitleAndActor(
         new TitleAndActor("Caddy Shack", "Ethan Hawke"));
       dvdInterpreterContext.addTitleAndActor(
         new TitleAndActor("Training Day", "Denzel Washington"));
       
       DvdInterpreterClient dvdInterpreterClient = 
         new DvdInterpreterClient(dvdInterpreterContext);
       
       System.out.println(
         "interpreting show actor: " + 
          dvdInterpreterClient.interpret(
            "show actor"));
       System.out.println(
          "interpreting show actor for title : " + 
           dvdInterpreterClient.interpret(
             "show actor for title "));
       System.out.println(
          "interpreting show title: " + 
           dvdInterpreterClient.interpret(
             "show title")); 
       System.out.println(
          "interpreting show title for actor : " + 
           dvdInterpreterClient.interpret(
             "show title for actor "));
   }
}      