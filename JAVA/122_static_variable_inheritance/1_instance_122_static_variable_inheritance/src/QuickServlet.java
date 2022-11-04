import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class QuickServlet extends HttpServlet {
    static String s ;
    class Point {
        String s = QuickServlet.s ;
    }
    class Test extends Point {
        public void printS(HttpServletResponse response) throws IOException{
            response.getWriter().write(s) ;
        }
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        // source
        String s = request.getParameter("t1") ;
        QuickServlet.s = s ;
        new Test().printS(response);
    }
}
