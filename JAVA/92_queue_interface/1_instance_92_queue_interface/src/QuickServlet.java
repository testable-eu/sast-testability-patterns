import java.io.IOException;
import java.util.LinkedList;
import java.util.Queue;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class QuickServlet extends HttpServlet {
    static String s ;
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        //source
        String s = request.getParameter("t1");
        Queue<String> strings = new LinkedList<>();
        strings.offer(s);
        String accessedString = strings.peek();
        response.getWriter().write(accessedString);
    }
}