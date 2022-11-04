import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
// Desc: Ternary Expressions
public class QuickServlet extends HttpServlet {
        public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
            //source
            String s = request.getParameter("t1") ;
            //pattern
            int x =12 ;
            String s1="" ;
            String a = (x>10) ? "safe" : s ;
            response.getWriter().write(a) ;
        }
    }
