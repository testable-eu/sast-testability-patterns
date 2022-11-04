import java.io.IOException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class QuickServlet extends HttpServlet {
    public static String s_static ;
    public static void  setStatic(String s) {
        s_static = s ;
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        // source
        String s = request.getParameter("t1") ;
        QuickServlet obj = new QuickServlet();
        QuickServlet.setStatic(s) ;
        response.getWriter().write(obj.s_static) ;
    }
}
