import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
// labels
public class QuickServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
            //source
            String s = request.getParameter("t1") ;
            String s1="" ; 
            //pattern
            first: {
                s1 = s ; 
                break first;
            }
            second : {
                response.getWriter().write(s1);
            }
        }
    }
