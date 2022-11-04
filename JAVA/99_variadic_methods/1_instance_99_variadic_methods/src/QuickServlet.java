import java.io.IOException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class QuickServlet extends HttpServlet {
    public String[] returnMe( String... str) {
        return str ;
    }
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        String s = request.getParameter("t1");
        //pattern
        String[] sout = returnMe(s);
        //sink
        response.getWriter().write(sout[0]);

    }
}
