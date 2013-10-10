
/*
#
# See the bottom for usage.
*/

package tap;

class  Tapper 
{

	class TapperContext
	{
		int current = 0;
		boolean ok = true;
	}

	TapperContext CTX = new TapperContext();

	void diag(String str)
	{
		System.out.println( str.replaceAll( "/^/", "#  ") );
	}


	void test(String name, TestCase t)
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

	void done()
	{
		System.out.println( "1.." + CTX.current );
		int status_code = if (CTX.ok) 0 else 1;
		System.exit( status_code );
	}
}

