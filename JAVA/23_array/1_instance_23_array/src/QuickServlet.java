import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class QuickServlet extends HttpServlet {
        public void doGet(HttpServletRequest request, HttpServletResponse response)
                throws IOException {
            String s = request.getParameter("t1");
            String arr[] = {"a","b",s} ;
            response.getWriter().write(arr[1]);
        }
    }