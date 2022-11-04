import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

// inner class extends outer class
public class QuickServlet extends HttpServlet{
    String s ;
    QuickServlet(String s) {
        this.s = s ;
    }
    protected String s1;
    public class Foo1 extends QuickServlet {

        Foo1(String s) {
            super(s);
        }
    }
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException{
        //source
        String s = request.getParameter("t1") ;
        Foo1 foo1 = new Foo1(s);
        response.getWriter().write(foo1.s);
    }
}
