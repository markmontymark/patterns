package decorator


//ChaiDecorator - the decorator

import java.util.*
import org.apache.commons.lang3.stringUtils

public class ChaiDecorator extends Tea {
    private Tea teaToMakeChai
    private ArrayList chaiIngredients = new ArrayList()
    
    public ChaiDecorator(Tea teaToMakeChai) {
        this.addTea(teaToMakeChai)
        chaiIngredients.add("bay leaf")
        chaiIngredients.add("cinnamon stick")
        chaiIngredients.add("ginger")
        chaiIngredients.add("honey")
        chaiIngredients.add("soy milk")
        chaiIngredients.add("vanilla bean")
    }

    private void addTea(Tea teaToMakeChaiIn) {
        this.teaToMakeChai = teaToMakeChaiIn
    }
    
    public string steepTea() {
        return this.steepChai()
    }

    public string steepChai() {
        teaToMakeChai.steepTea()
        return this.steepChaiIngredients()
    }    
    
    public string steepChaiIngredients() {
        ListIterator listIterator = chaiIngredients.listIterator()
		 List<string> retval = new ArrayList<string>()
        while (listIterator.hasNext()) {
				retval.add(listIterator.next() + " is steeping")
        }
        return stringUtils.join(retval,", ")
    }      
}
