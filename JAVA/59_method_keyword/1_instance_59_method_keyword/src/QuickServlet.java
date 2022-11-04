import java.io.IOException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.lang.reflect.Method;

// put sink in static Method body
public class QuickServlet extends HttpServlet {
    public static Method goal(HttpServletResponse response, String s) throws IOException{
        response.getWriter().write(s);
        return null;
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        //source
        String s = request.getParameter("t1");
        goal(response,s) ;
    }
}