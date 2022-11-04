import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class QuickServlet extends HttpServlet {
    public static class Foo {
        String s = "abc";
        Foo(String s) {
            this.s = s;
        }

        @Override
        public String toString() {
            return this.s ;
            }
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        //source
        String s = request.getParameter("t1");
        //pattern
        Foo foo = new Foo(s) ;
        //sink
        response.getWriter().write(String.valueOf(foo)) ;
        response.getWriter().flush() ;
    }
}
