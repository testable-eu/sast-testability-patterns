import java.io.IOException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class QuickServlet extends HttpServlet {
    class Foo {
	String[] hello={"hello","there"} ;
    }
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        String s = request.getParameter("t1");
        //pattern
        Foo foo = new Foo() ;
        String [] arr1 = {"x","abc","def"} ;
        foo.hello = arr1 ;
        String [] arr2 = arr1 ;
        arr2[0] = s ;
        //sink
        response.getWriter().write(foo.hello[0]);
        response.getWriter().flush();
    }
}
