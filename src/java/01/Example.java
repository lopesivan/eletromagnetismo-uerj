import com.maplesoft.openmaple.*;
import com.maplesoft.externalcall.MapleException;

class Example
{

    public static void main( String notused[] ) throws MapleException
    {
        String[] mapleArgs = { "java" };
        Engine engine = new Engine( mapleArgs, new EngineCallBacksDefault(), null, null );

        Numeric n = engine.newNumeric( 1000 );
        List l = (List)engine.evaluate( "[1,2,3,4]:" );
        RTable r = (RTable)engine.evaluate( "Array( 1..10, 1..10 ):" );

        System.out.println( n.isDisposed() );
        System.out.println( l.isDisposed() );
        System.out.println( r.isDisposed() );

        engine.stop();

        System.out.println( n.isDisposed() );
        System.out.println( l.isDisposed() );
        System.out.println( r.isDisposed() );

        try
        {
            engine.evaluate( "1+1;" );
        }
        catch ( MapleException me )
        {
            System.out.println( "Error: "+me.getMessage() );
        }
    }
}
