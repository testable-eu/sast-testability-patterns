import java.io.IOException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class QuickServlet extends HttpServlet {
    String s ;
    QuickServlet(String s){
        this.s = s;
    }
    public static class QuickServletChild extends QuickServlet {
        QuickServletChild(String s) {
            super(s);
        }
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        // source
        String s = request.getParameter("t1") ;
        QuickServletChild qsChild = new QuickServletChild(s) ;
        response.getWriter().write(qsChild.s);
    }
}
