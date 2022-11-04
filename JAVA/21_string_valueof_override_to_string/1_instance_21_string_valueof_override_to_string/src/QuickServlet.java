import java.io.PrintWriter;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class QuickServlet extends HttpServlet {
    public static class Foo {
        String s = "abc";
        HttpServletResponse response = null;

        Foo(String s, HttpServletResponse response) {
            this.s = s;
            this.response = response;
        }

        @Override
        public String toString() {
            try{
                this.response.getWriter().write(this.s);}
            catch (Exception e) {
            }
            return this.s ;
        }
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) {
        //source
        String s = request.getParameter("t1");
        //pattern
        Foo foo = new Foo(s,response) ;
        //sink
        String.valueOf(foo) ;
    }
}
