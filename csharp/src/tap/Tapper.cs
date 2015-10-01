
/*
#
# See the bottom for usage.
*/

namespace tap {

  using System;
  //using System.Windows;

  public class  Tapper
  {

    class TapperContext
    {
      public int current = 0;
      public bool ok = true;
    }

    TapperContext CTX = new TapperContext();

    public void diag(String str)
    {
      Console.WriteLine( str.Replace( "/^/", "#  ") );
    }


    public void test(String testName, object got, object expected)
    {
      CTX.current++;
      int id = CTX.current;
      if(expected.Equals(got))
      {
        Console.WriteLine( "ok " + id + " - " + testName);
        return;
      }
      CTX.ok = false;
      Console.WriteLine( "not ok " + id + " - " + testName);
      Console.WriteLine( "\tgot\n\t-" + got +"-" );
      Console.WriteLine( "\texpected\n\t-" + expected  +"-");
    }
    public void test(String testName, bool testPassed )
    {
      CTX.current++;
      int id = CTX.current;
      if(testPassed)
      {
        Console.WriteLine( "ok " + id + " - " + testName);
        return;
      }
      CTX.ok = false;
      Console.WriteLine( "not ok " + id + " - " + testName);
    }

    public void done()
    {
      Console.WriteLine( "1.." + CTX.current );
      int status_code = CTX.ok ? 0 : 1;
      /*
         if (System.Windows.Forms.Application.MessageLoop)
         {
      // Use this since we are a WinForms app
      System.Windows.Forms.Application.Exit(status_code);
      }
      else
      {
      */
      // Use this since we are a console app
      System.Environment.Exit(status_code);
      //}
    }
  }


}
