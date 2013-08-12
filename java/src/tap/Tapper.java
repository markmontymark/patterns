
/*
#
# See the bottom for usage.
*/

package tap;

public class  Tapper 
{

	class TapperContext
	{
		public int current = 0;
		public boolean ok = true;
	}

	TapperContext CTX = new TapperContext();

	public void diag(String str)
	{
		System.out.println( str.replaceAll( "/^/", "#  ") );
	}


	public void test(String name, TestCase t)
	{
		CTX.current++;
		int id = CTX.current;
		//TODO call block?
		try
		{
			t.test();
			System.out.println( "ok " + id + " - " + name);
		}
		catch(Exception e)
		{
			CTX.ok = false;
			System.out.println( "not ok " + id + " - " + name);
			e.printStackTrace();
		}
	}

	public void done()
	{
		System.out.println( "1.." + CTX.current );
		int status_code = CTX.ok ? 0 : 1;
		System.exit( status_code );
	}
}

