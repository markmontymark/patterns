0


//TestProxy.java - testing the Proxy

class TestProxy {
   public static void main(String[] args) {
       System.out.println("TestProxy: instantiating PotOfTeaProxy");
       PotOfTeaInterface potOfTea = new PotOfTeaProxy();
       System.out.println(" ");
       System.out.println("TestProxy: pouring tea");
       potOfTea.pourTea();
   }
}