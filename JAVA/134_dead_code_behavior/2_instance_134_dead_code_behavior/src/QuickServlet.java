import java.io.IOException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class QuickServlet extends HttpServlet {
    private String isZero(int d, String s) {
        switch (d) {
            case 0:
                return "";
            default:
                return s;
        }
    }
        public void doGet (HttpServletRequest request, HttpServletResponse response)
            throws IOException {
            //source
            //test1
            String s = request.getParameter("t1");
            String sout = isZero(0, s);
            response.getWriter().write(sout);
        }
}
