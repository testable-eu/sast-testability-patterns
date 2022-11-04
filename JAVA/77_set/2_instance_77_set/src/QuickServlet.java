import java.io.IOException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Set;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;


public class QuickServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        // source
        String s = request.getParameter("t1") ;
        List<String> list = new ArrayList<String>();
        list.add(s) ;
        Set<String> set = new HashSet<String>(list);
        response.getWriter().write(set.stream().findFirst().toString());
    }
}
