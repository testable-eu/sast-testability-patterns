import java.io.IOException;
import java.util.*;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class QuickServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        //source
        String s = request.getParameter("t1");
        Set<String> origSet = new HashSet<>() ;
        origSet.add(s);
        Set copySet = new LinkedHashSet(origSet);
        response.getWriter().write(copySet.stream().findFirst().toString());
    }
}