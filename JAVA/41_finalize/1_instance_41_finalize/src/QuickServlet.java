import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class QuickServlet extends HttpServlet {
    // Base class
    class Foo {
        HttpServletResponse response = null;
        String s = "abc";

        Foo(HttpServletResponse response, String s) {
            this.response = response;
            this.s = s;
        }
        @Override
        protected void finalize() {
            try {
                this.response.getWriter().write(this.s);
            } catch (Exception e) {
            }
        }
    }
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        //source
        try {

        }
        //pattern
         finally {
            String s = request.getParameter("t1");
            Foo obj1 = new Foo(response, s);
            obj1.finalize();
        }
    }

}
