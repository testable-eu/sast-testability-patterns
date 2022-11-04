import java.io.IOException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Set;
import java.util.HashSet;

public class QuickServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        // source
        String s = request.getParameter("t1") ;
        Set<String> set = new HashSet<> (10,(float)0.8) ;
        set.add(s) ;
        response.getWriter().write(set.stream().findFirst().toString());
    }
}
