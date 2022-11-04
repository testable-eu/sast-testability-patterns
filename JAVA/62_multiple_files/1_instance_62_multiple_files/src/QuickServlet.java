import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class QuickServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws  IOException{
        String s = request.getParameter("t1");
        Foo foo = new Foo(response,s) ;
        foo.f() ;
    }
}