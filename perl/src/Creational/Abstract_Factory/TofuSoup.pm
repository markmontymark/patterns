package Creational::Abstract_Factory;


class TofuSoup extends Soup
{
    public TofuSoup() 
    {
        soupName = "Tofu Soup";
        soupIngredients.add("1 Pound tofu");
        soupIngredients.add("1 cup carrot juice");    
        soupIngredients.add("1/4 cup spirolena");         
    }
}