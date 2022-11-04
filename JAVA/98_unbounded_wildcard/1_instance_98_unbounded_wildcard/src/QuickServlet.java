import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class QuickServlet extends HttpServlet {
        static void printCollection(HttpServletResponse response, Collection<?> c) throws IOException {
            // a wildcard collection
            for (Object o : c) {
                response.getWriter().write(o.toString());
            }
        }
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        //source
        String s = request.getParameter("t1");
        Collection<String> cs = new ArrayList<>();
        cs.add(s);
        printCollection(response,cs);
    }
}