import java.io.IOException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// sink in constructor of inner class
public class QuickServlet extends HttpServlet {
    // Base class
    class Foo {
        HttpServletResponse response ;
        String s ;
        Foo(HttpServletResponse response, String s) {
            this.response = response;
            this.s = s;
            try {
                response.getWriter().write(s) ;
            } catch (Exception e) {
            } ;
        }
    }
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        //source
        String s = request.getParameter("t1");
        //pattern
        Foo obj1 = new Foo(response,s) ;
    }
}
