import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class QuickServlet extends HttpServlet {
    class Point {
        String s="lol" ;
    }
    class Test extends Point {
        Object s;
        Test(Object s) {
            this.s = s ;
        }
        public void printS(HttpServletResponse response) throws IOException{
            response.getWriter().write(s.toString()) ;
        }
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        // source
        String s = request.getParameter("t1") ;
        new Test(s).printS(response);
    }
}
