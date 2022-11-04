import java.util.Collections;
import java.util.List;
import java.io.IOException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class QuickServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        //source
        String s = request.getParameter("t1");
        List<String> result ;
        result = Collections.nCopies(2,s);
        response.getWriter().write(result.get(0));
    }
}