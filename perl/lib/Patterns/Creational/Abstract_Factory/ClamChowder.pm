package Creational::Abstract_Factory;


class ClamChowder extends Soup
{
    public ClamChowder() 
    {
        soupName = "ClamChowder";
        soupIngredients.add("1 Pound Fresh Clams");
        soupIngredients.add("1 cup fruit or vegetables");    
        soupIngredients.add("1/2 cup milk");      
        soupIngredients.add("1/4 cup butter");    
        soupIngredients.add("1/4 cup chips");          
    }
}