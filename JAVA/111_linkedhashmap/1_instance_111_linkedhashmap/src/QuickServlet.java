import java.io.IOException;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class QuickServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        //source
        String s = request.getParameter("t1");
        HashMap<String,String> map = new HashMap<>();
        map.put("sink",s);
        Map copy = new LinkedHashMap(map);
        response.getWriter().write(copy.get("sink").toString());
    }
}