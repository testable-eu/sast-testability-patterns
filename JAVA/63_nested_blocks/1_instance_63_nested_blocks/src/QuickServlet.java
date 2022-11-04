import java.io.IOException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class QuickServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        // source
        String s = request.getParameter("t1") ;
        String sout;
        {
            String s1 = s ;
            {
                sout = s1 ;
            }
        }
        response.getWriter().write(sout) ;
    }
}
