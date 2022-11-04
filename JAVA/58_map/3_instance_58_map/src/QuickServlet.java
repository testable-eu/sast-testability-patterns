import java.io.IOException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.*;


public class QuickServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        //source
        String s = request.getParameter("t1");
        HashMap<String, String> map = new HashMap<>();
        map.put("key", s);
        Collection<String> l = map.values();
        response.getWriter().write(String.valueOf(l.stream().findFirst()));
    }
}
