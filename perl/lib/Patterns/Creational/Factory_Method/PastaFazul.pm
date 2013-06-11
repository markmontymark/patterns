package Patterns::Creational::Factory_Method;


class PastaFazul extends Soup
{
    public PastaFazul() 
    {
        soupName = "Pasta Fazul";
        soupIngredients.add("1 Pound tomatos");
        soupIngredients.add("1/2 cup pasta");    
        soupIngredients.add("1/2 cup diced carrots");          
        soupIngredients.add("1 cup tomato juice");             
    }
}