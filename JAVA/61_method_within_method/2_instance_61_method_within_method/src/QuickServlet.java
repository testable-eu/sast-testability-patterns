import java.io.IOException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class QuickServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        String s = request.getParameter("t1");
        String s1 = getMe(s) ;
        response.getWriter().write(s1) ;
    }

    public static String getMe(String s) {
        return getHim(s);
    }
    public static String getHim(String s) {
        return s ;
    }

}
