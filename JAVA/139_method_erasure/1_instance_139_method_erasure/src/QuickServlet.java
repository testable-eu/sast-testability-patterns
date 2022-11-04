import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
public class QuickServlet extends HttpServlet {
    class A {
        public String id(String s) {
            return "hi" ;
        }
    }
    class B extends A {
        public String id (String s) {
            return s;
        }
    }
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        //source
        String s = request.getParameter("t1") ;
        A a = new B() ;
        response.getWriter().write(a.id(s)) ;
    }
}
