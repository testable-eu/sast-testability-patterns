import java.io.IOException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class QuickServlet extends HttpServlet {
        public static String test(String s) {
            Object[] arrayref = null;
            try {
                Object obj = arrayref[0];
                return s;
            } catch (NullPointerException e)  {
                return null;
            }
        }

        public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        //source
        //test1
        String s =  request.getParameter("t1") ;
        String sout = test(s);
        response.getWriter().write(sout);
    }
}
