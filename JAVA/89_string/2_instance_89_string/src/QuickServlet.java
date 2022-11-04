import java.io.IOException;
import java.io.PrintWriter;
import java.util.*;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class QuickServlet extends HttpServlet {
        public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException{
            String s = request.getParameter("t1");
            String sink = String.copyValueOf(s.toCharArray(), 0, s.length());
            response.getWriter().write(sink);
        }
}
