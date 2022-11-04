import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class QuickServlet extends HttpServlet {
    class A {

        private String a;

        A() { System.out.println("Calling The Constructor"); }

        public A setFirst(String a)
        {
            this.a = a;
            return this;
        }
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException{
        //source
        String s = request.getParameter("t1");
        A a  = new A().setFirst("lol").setFirst(s) ;
        response.getWriter().write(a.a);
    }
}
