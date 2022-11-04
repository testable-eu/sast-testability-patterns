import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
public class QuickServlet extends HttpServlet {
    static class Superclass {
        static String s ;
        void foo(HttpServletResponse response) throws IOException { response.getWriter().write(s); }
    }
    static class Subclass1 extends Superclass {
        void foo() { throw new UnsupportedOperationException(); }
            public void run(HttpServletResponse response) throws IOException {
                Subclass1.super.foo(response); // Gets the 'println' behavior
            }
        };
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        //source
        String s = request.getParameter("t1") ;
        Superclass.s = s ;
        Subclass1 sub = new Subclass1();
        sub.run(response);
    }
}
