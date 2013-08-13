//ChaiDecorator.java - the decorator

namespace Structural.Decorator {

using System.Collections.Generic;

public class ChaiDecorator : Tea {
    private Tea teaToMakeChai;
    private List<string> chaiIngredients = new List<string>();
    
    public ChaiDecorator(Tea teaToMakeChai) {
        this.addTea(teaToMakeChai);
        chaiIngredients.Add("bay leaf");
        chaiIngredients.Add("cinnamon stick");
        chaiIngredients.Add("ginger");
        chaiIngredients.Add("honey");
        chaiIngredients.Add("soy milk");
        chaiIngredients.Add("vanilla bean");
    }

    private void addTea(Tea teaToMakeChaiIn) {
        this.teaToMakeChai = teaToMakeChaiIn;
    }
    
    override public string steepTea() {
        return this.steepChai();
    }

    public string steepChai() {
        teaToMakeChai.steepTea();
        return this.steepChaiIngredients();
    }    
    
    public string steepChaiIngredients() {
			List<string> retval = new List<string>();
			foreach(string ingred in chaiIngredients)
			{
				retval.Add( ingred + " is steeping");
			  }
			return string.Join(", ",retval.ToArray());
    }      
}

}
