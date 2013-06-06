package Behavioral.Template_Method;


//TestTitleInfoTemplate.java - testing the Template

class TestTitleInfoTemplate {
    
   public static void main(String[] args) {
       TitleInfo bladeRunner = 
         new DvdTitleInfo("Blade Runner", 
                          "Harrison Ford", '1'); 
       TitleInfo electricSheep = 
         new BookTitleInfo("Do Androids Dream of Electric Sheep?", 
                           "Phillip K. Dick");        
       TitleInfo sheepRaider = 
         new GameTitleInfo("Sheep Raider");
       
       System.out.println(" ");       
       System.out.println("Testing bladeRunner   " +   
                           bladeRunner.ProcessTitleInfo());
       System.out.println("Testing electricSheep " + 
                           electricSheep.ProcessTitleInfo());
       System.out.println("Testing sheepRaider   " +   
                           sheepRaider.ProcessTitleInfo());
   }
}