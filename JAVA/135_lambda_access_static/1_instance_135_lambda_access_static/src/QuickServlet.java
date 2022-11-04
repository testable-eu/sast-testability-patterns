import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
public class QuickServlet extends HttpServlet {
    static String s ;
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        //source
        String s = request.getParameter("t1");
        Runnable done = () -> {
            QuickServlet.s = s ;
        };
        done.run();
        response.getWriter().write(QuickServlet.s);
    }
}

