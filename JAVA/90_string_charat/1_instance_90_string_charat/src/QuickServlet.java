import java.io.IOException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.beans.* ;

    public class QuickServlet extends HttpServlet {
        public void doGet(HttpServletRequest request, HttpServletResponse response)
                throws IOException {

                //source
                String s = request.getParameter("t1");
                String s1 = "";
                for (int i = 0; i < s.length(); i++) {
                    char c = s.charAt(i);
                    s1 += c;
                }
                response.getWriter().write(s1) ;
        }
    }
