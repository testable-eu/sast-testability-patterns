import java.io.IOException;
import java.io.PrintWriter;
import java.util.*;
import java.util.stream.* ;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class QuickServlet extends HttpServlet {
        public void doGet(HttpServletRequest request, HttpServletResponse response)
                throws IOException {
            String s = request.getParameter("t1");
            //pattern
            String concatenated = "IAmNotVulnerable "+s ;
            String splitted[] = concatenated.split(" ") ;
            response.getWriter().write(splitted[1]);
            response.getWriter().flush();
        }
    }