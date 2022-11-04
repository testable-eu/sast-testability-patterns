import java.io.IOException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//Desc: local method of a local class

public class QuickServlet extends HttpServlet {
    String Foo(String s)
    {
        // local class
        class Local {
            // local method of local class
            String fun() {
                return s ;
            }
        }
        String sout = new Local().fun();
        return sout;
    }
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        String s = request.getParameter("t1");
        String sout = Foo(s);
        response.getWriter().write(sout);
    }
}