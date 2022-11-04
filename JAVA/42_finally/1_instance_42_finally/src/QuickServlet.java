import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class QuickServlet extends HttpServlet {
    public String catchMe(String s) {
        try {

        }
        catch (Exception e) {
            return "lol";
        }
        finally {
            return(s) ;
        }
    }
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        //source
        String s = request.getParameter("t1") ;
        //pattern
        response.getWriter().write(catchMe(s)) ;
    }
}
