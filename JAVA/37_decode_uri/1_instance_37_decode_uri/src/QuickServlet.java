import java.io.IOException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class QuickServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        //source
        String s = request.getParameter("t1") ;
        //pattern
        String s1 = java.net.URLDecoder.decode(s,java.nio.charset.StandardCharsets.UTF_8.toString()) ;
        //sink
        response.getWriter().write(s1) ;
    }
}
