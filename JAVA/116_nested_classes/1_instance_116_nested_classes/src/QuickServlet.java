import java.io.IOException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class QuickServlet extends HttpServlet {
    // create a local interface with one abstract
    // method run()
    static class WithDeepNesting {
        String toBe;
        WithDeepNesting(String b) {
            toBe = b; }
        public class Nested {
            String theQuestion;
            String nested(){
                theQuestion = toBe;
                return theQuestion ;

            }
        }
    }
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException
    {
        String s = request.getParameter("t1");
        WithDeepNesting withDeepNesting = new WithDeepNesting(s) ;
        WithDeepNesting.Nested nested = withDeepNesting.new Nested();
        response.getWriter().write(nested.nested());
    }
}
